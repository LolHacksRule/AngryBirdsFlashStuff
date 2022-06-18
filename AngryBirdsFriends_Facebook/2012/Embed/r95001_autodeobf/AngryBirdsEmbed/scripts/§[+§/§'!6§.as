package §[+§
{
   import § "§.§91§;
   import § "§.§;4§;
   import §10§.§#!4§;
   import §9!?§.§&r§;
   import §9!?§.§^]§;
   import §9H§.§@M§;
   import §`"§.§"e§;
   
   public class §'!6§
   {
      
      public static const §'S§:Number = 1.25;
      
      public static const §^!#§:Number = 0.15;
      
      public static const §0B§:Number = §#!4§.§each § * §^]§.§ u§;
      
      public static const §9J§:Number = §#!4§.§81§ * §^]§.§ u§;
      
      public static const §]!E§:Number = 0.1;
      
      public static const §&!+§:int = 1500;
      
      public static const §?K§:int = 10;
      
      public static const §,7§:int = 15;
      
      public static const §=9§:int = 300;
      
      public static const §`]§:int = 1000;
      
      public static const §-!@§:int = 10000;
      
      public static const §@@§:int = §-!@§ / 50;
      
      public static const §^!,§:int = 0;
      
      public static const §@!7§:int = 1;
      
      public static const §?%§:int = 2;
      
      public static const §31§:int = 3;
      
      public static const §^G§:int = 4;
      
      public static const §0!%§:int = 5;
      
      public static const §=!6§:String = "CASTLE";
      
      public static const §use§:String = "SLINGSHOT";
      
      protected static var §>m§:Number;
      
      public static var §9]§:Number;
      
      public static var §<u§:Number;
      
      public static const §8!?§:Number = 2000;
       
      
      private var § var§:Number = 1.0;
      
      private var §[!5§:Number = 0.2;
      
      protected var §=!B§:Number;
      
      protected var §7^§:Number;
      
      protected var §=s§:Number;
      
      public var §]!9§:§^]§;
      
      public var §,;§:Number;
      
      public var §-Q§:Number;
      
      private var §92§:§>M§;
      
      private var §>y§:§>M§;
      
      public var §#7§:Number;
      
      public var §4>§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §%^§:Number;
      
      public var § !7§:Number;
      
      public var §>!5§:Number;
      
      public var §68§:Number;
      
      private var §[6§:Number;
      
      private var §=+§:§!!9§;
      
      private var §%s§:§!!9§;
      
      protected var §4k§:Number = 0;
      
      protected var §]E§:Number = 0;
      
      protected var §[J§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §!!%§:Number = 0;
      
      public var §4!§:Boolean = true;
      
      public var §!%§:Number = 0;
      
      public var §;D§:Number = 0;
      
      public var §7w§:Number = 0;
      
      public var §8S§:Number = 0;
      
      public var §!S§:Number = 0;
      
      public var §5s§:Number = 0;
      
      public var §9-§:Number = 0;
      
      public var §4!&§:Number = 0;
      
      public var §6!=§:Number = 0;
      
      private var §7!&§:§!!9§;
      
      public var §&t§:Number = 0;
      
      private var §[Y§:Number = 0;
      
      private var §`1§:Number = 0;
      
      private var §[E§:§91§ = null;
      
      private var §-d§:§91§ = null;
      
      public function §'!6§(param1:§^]§, param2:§;4§, param3:Number = 1.0)
      {
         this.§7!&§ = new §!!9§(0,0,1,false);
         super();
         this.§7^§ = 0;
         this.§=s§ = 0;
         this.§]!9§ = param1;
         §'!6§.§>m§ = 1;
         this.§ var§ = Math.max(1,Math.min(2,param3));
         this.§=!B§ = this.§ var§;
         this.§#E§(param2);
         if(this.§92§ && this.§>y§)
         {
            this.§`H§();
            this.§4k§ = this.§92§.x - this.§>y§.x;
            this.§]E§ = this.§92§.y - this.§>y§.y;
            this.§[J§ = this.§92§.scale - this.§>y§.scale;
            this.§7^§ = this.§92§.x;
            this.§=s§ = this.§92§.y;
            §>m§ = this.§92§.scale * this.§=!B§;
         }
         this.mCurrentCameraSliderLocation = §-!@§;
         this.§4!§ = true;
         this.§!!%§ = §-!@§ / 500;
      }
      
      private static function §@k§() : Number
      {
         var _loc1_:Number = §#!4§.§+!8§ / §#!4§.§51§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §#u§() : Number
      {
         return §>m§ * §@k§();
      }
      
      public function get § i§() : Number
      {
         return this.§=!B§;
      }
      
      public function set § i§(param1:Number) : void
      {
         this.§=!B§ = param1;
      }
      
      public function get §@?§() : Number
      {
         return this.§[6§;
      }
      
      public function §7R§() : Number
      {
         return §0B§ / (this.§ !7§ - this.§%^§);
      }
      
      public function get §5+§() : Number
      {
         return this.§ var§;
      }
      
      public function get §%j§() : Number
      {
         return this.§[!5§;
      }
      
      public function §?Z§(param1:Number) : void
      {
         this.§=!B§ = param1;
         this.§+b§();
         this.§5[§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §0!%§)
         {
            return;
         }
         this.goToCastleView();
         this.§!%§ = 2000;
         this.§<s§();
         this.§[h§();
         this.§,v§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§7^§ = this.§>y§.x;
         this.§=s§ = this.§>y§.y;
         this.§4!§ = false;
         this.§!!%§ = §-!@§ / 160000 * param1;
         this.§ H§(§0!%§);
      }
      
      public function §`H§() : void
      {
         this.§%^§ = this.§>y§.x - §0B§ / this.§>y§.scale / 2;
         this.§ !7§ = this.§92§.x + §0B§ / this.§92§.scale / 2;
         this.§>!5§ = this.§]!9§.§2X§.§;!#§ - 20 * §^]§.§4!!§ * §^]§.§ u§;
         this.§68§ = this.§]!9§.§2X§.§;!#§ + 4;
         var _loc1_:Number = §0B§ / (this.§ !7§ - this.§%^§);
         this.§[6§ = this.§68§ - §9J§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§]!9§ = null;
      }
      
      public function §#E§(param1:§;4§) : void
      {
         var _loc3_:§91§ = null;
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
         while(_loc2_ < param1.§7W§)
         {
            _loc3_ = param1.§-v§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§+y§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §9J§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §0B§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §use§)
            {
               this.§>y§ = new §>M§(_loc9_,_loc10_,_loc13_,true);
               this.§%s§ = new §!!9§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §=!6§)
            {
               this.§92§ = new §>M§(_loc9_,_loc10_,_loc13_,false);
               this.§=+§ = new §!!9§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §@M§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §`6§(param1:§;4§) : void
      {
         var _loc2_:§91§ = new §91§();
         _loc2_.id = §use§;
         _loc2_.x = this.§>y§.x;
         _loc2_.y = this.§>y§.y;
         var _loc3_:Number = §0B§ / this.§>y§.scale / 2;
         var _loc4_:Number = §9J§ / this.§>y§.scale / 2;
         _loc2_.left = this.§>y§.x - _loc3_;
         _loc2_.right = this.§>y§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§91§;
         (_loc5_ = new §91§()).id = §=!6§;
         _loc5_.x = this.§92§.x;
         _loc5_.y = this.§92§.y;
         var _loc6_:Number = §0B§ / this.§92§.scale / 2;
         var _loc7_:Number = §9J§ / this.§92§.scale / 2;
         _loc5_.left = this.§92§.x - _loc6_;
         _loc5_.right = this.§92§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§<W§();
         param1.§&!@§(_loc2_);
         param1.§&!@§(_loc5_);
      }
      
      public function §+y§(param1:§91§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §#!4§.§each § * 0.5 / _loc2_ * §^]§.§ u§;
         var _loc4_:Number = param1.y - §#!4§.§81§ * 0.5 / _loc2_ * §^]§.§ u§;
         var _loc5_:Number = _loc3_ + §#!4§.§each § / _loc2_ * §^]§.§ u§;
         var _loc6_:Number = _loc4_ + §#!4§.§81§ / _loc2_ * §^]§.§ u§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §-!=§(param1:§>M§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§!!%§;
         if(_loc3_ >= §-!@§)
         {
            _loc3_ = §-!@§;
            this.§ H§(§^!,§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§ H§(§^!,§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §,!1§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§!!%§;
         var _loc4_:Number = -§-!@§ * 0.7;
         if(_loc2_ >= §-!@§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §-!@§;
            }
            this.§!!%§ = -this.§!!%§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §9S§(param1:Number) : void
      {
         if(this.mCurrentAction == §0!%§)
         {
            this.§,!1§(param1);
         }
         else if(this.mCurrentAction == §@!7§)
         {
            this.§-!=§(this.§92§,param1);
         }
         else if(this.mCurrentAction == §?%§)
         {
            this.§-!=§(this.§>y§,-param1);
         }
         else if(this.mCurrentAction == §31§)
         {
            this.§4!§ = true;
         }
         else if(this.mCurrentAction == §^G§)
         {
            this.§>!-§(param1);
         }
      }
      
      public function §`!?§(param1:Number) : void
      {
         if(this.§[E§)
         {
            this.§7^§ = this.§[E§.x;
            this.§=s§ = this.§[E§.y;
            §>m§ = §0B§ / (this.§[E§.right - this.§[E§.left);
         }
         else
         {
            this.§+b§();
            this.§9S§(param1);
            this.§^!1§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§<s§();
         this.§[h§();
         this.§,v§();
      }
      
      private function § D§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%s§.scale + (this.§=+§.scale - this.§%s§.scale) * param1;
         var _loc4_:Number = this.§%s§.x + (this.§=+§.x - this.§%s§.x) * param1;
         var _loc5_:Number = this.§%s§.y + (this.§=+§.y - this.§%s§.y) * param1;
         this.§7!&§.x -= (this.§7!&§.x - _loc4_) * param2;
         this.§7!&§.y -= (this.§7!&§.y - _loc5_) * param2;
         this.§7!&§.scale -= (this.§7!&§.scale - _loc3_) * param2;
      }
      
      protected function §5[§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4k§ != 0)
         {
            if(!this.§4!§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §-!@§;
            this.§ D§(_loc3_,param2);
            this.§7^§ = this.§7!&§.x;
            this.§=s§ = this.§7!&§.y;
            §>m§ = this.§7!&§.scale;
         }
      }
      
      public function §^!1§(param1:Number, param2:Number) : void
      {
         var _loc5_:§"e§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §-!@§)
         {
            this.§4!§ = true;
         }
         if(this.mCurrentAction == §31§)
         {
            if(!this.§]!9§.activeObject)
            {
               this.§ H§(§@!7§);
               this.§6!=§ = §`]§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§]!9§.activeObject).§]d§().GetPosition().x + (!!_loc5_.§=!#§ ? _loc5_.§=!#§ * §^]§.§ u§ : 0);
               _loc7_ = _loc5_.§]d§().GetPosition().y + (!!_loc5_.§&+§ ? _loc5_.§&+§ * §^]§.§ u§ : 0);
               if((_loc8_ = _loc5_.§]d§().GetLinearVelocity().x) > 0 && this.§4k§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§4k§ * §-!@§;
               }
               if(param1 >= §-!@§)
               {
                  param1 = §-!@§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §-!@§;
               this.§ D§(_loc9_,_loc4_);
               _loc10_ = this.§7!&§.x - §0B§ * 0.5 / this.§7!&§.scale;
               _loc11_ = this.§7!&§.y - §9J§ * 0.5 / this.§7!&§.scale;
               _loc12_ = this.§7!&§.x + §0B§ * 0.5 / this.§7!&§.scale;
               _loc13_ = this.§7!&§.y + §9J§ * 0.5 / this.§7!&§.scale;
               _loc14_ = 150 * §^]§.§ u§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§%^§,_loc15_);
               _loc17_ = Math.min(this.§ !7§,_loc17_);
               _loc19_ = Math.abs(§0B§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§9J§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§7!&§.scale)
               {
                  _loc21_ = this.§7!&§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §0B§ * 0.5 / _loc21_ > this.§ !7§)
               {
                  _loc15_ = (_loc17_ = this.§ !7§) - §0B§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§%^§)
                  {
                     _loc15_ = this.§%^§;
                  }
               }
               if(_loc22_ - §0B§ * 0.5 / _loc21_ < this.§%^§)
               {
                  _loc17_ = (_loc15_ = this.§%^§) + §0B§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§ !7§)
                  {
                     _loc17_ = this.§ !7§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§0B§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §0B§ * 0.5 / _loc21_ < this.§>!5§)
               {
                  _loc23_ = this.§>!5§ + §0B§ * 0.5 / _loc21_;
               }
               this.§7^§ -= (this.§7^§ - _loc22_) * _loc4_;
               this.§&t§ -= (this.§&t§ - _loc21_) * _loc4_;
               §>m§ = this.§&t§;
               this.§=s§ -= (this.§=s§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§ !7§ || _loc6_ <= this.§%^§)
               {
                  this.§7!&§.scale = §>m§;
                  this.§7!&§.x = this.§7^§;
                  this.§7!&§.y = this.§=s§;
               }
            }
         }
         else
         {
            this.§5[§(param1,_loc4_);
         }
      }
      
      public function §>r§(param1:Number, param2:Number) : void
      {
         this.§[Y§ = param1;
         this.§`1§ = param2;
      }
      
      private function §+p§(param1:§!!9§, param2:§>M§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §^!#§ + (param2.scale - §^!#§) * this.§=!B§ * §'!6§.§@k§();
         if(§0B§ / param1.scale > this.§ !7§ - this.§%^§)
         {
            _loc3_ = §0B§ / (this.§ !7§ - this.§%^§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §4;§(param1:§!!9§, param2:§>M§) : Boolean
      {
         var _loc3_:Boolean = this.§+p§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §9J§ * 0.5 / param1.scale;
         var _loc5_:Number = §9J§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §0B§ * 0.5 / param1.scale) < this.§%^§ && param1.§=b§)
         {
            param1.x += this.§%^§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §0B§ * 0.5 / param1.scale) > this.§ !7§ && !param1.§=b§)
         {
            param1.x += this.§ !7§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §^!>§(param1:§!!9§, param2:§>M§) : Number
      {
         return (param1.scale - §^!#§) / (§'!6§.§@k§() * (param2.scale - §^!#§));
      }
      
      protected function §+b§() : void
      {
         this.§4;§(this.§%s§,this.§>y§);
         var _loc1_:Number = this.§^!>§(this.§%s§,this.§>y§);
         this.§4;§(this.§=+§,this.§92§);
         var _loc2_:Number = this.§^!>§(this.§=+§,this.§92§);
         this.§=!B§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §<s§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§]!9§.sprite)
         {
            _loc1_ = §#!4§.§^"§() / §#!4§.§+!8§ - §#!4§.§81§ >> 1;
            §9]§ = this.§]!9§.sprite.x = §^]§.§true § * ((1 - §'!6§.§#u§) / 2);
            §<u§ = this.§]!9§.sprite.y = _loc1_ + §^]§.§4!!§ * (1 - §'!6§.§#u§) * §&r§.§&"§;
         }
      }
      
      public function §,v§() : void
      {
         if(this.§]!9§.sprite)
         {
            this.§]!9§.sprite.scaleX = §#u§;
            this.§]!9§.sprite.scaleY = §#u§;
         }
      }
      
      public function §[h§() : void
      {
         var _loc1_:Number = this.§7^§ / §^]§.§ u§ + this.§[Y§;
         var _loc2_:Number = this.§=s§ / §^]§.§ u§ + this.§`1§;
         this.§#7§ = _loc1_ - §^]§.§true § / 2 * §#!4§.§+!8§ / §#!4§.§-r§;
         this.§4>§ = _loc2_ - §^]§.§4!!§ / 2 + §&r§.§[!<§;
         if(this.§]!9§.background)
         {
            this.§]!9§.background.include(this.§#7§,this.§4>§);
         }
         if(this.§]!9§.objects)
         {
            this.§]!9§.objects.include(this.§#7§,this.§4>§);
         }
         if(this.§]!9§.§@R§)
         {
            this.§]!9§.§@R§.include(this.§#7§,this.§4>§);
         }
         if(this.§]!9§.slingshot)
         {
            this.§]!9§.slingshot.include(this.§#7§,this.§4>§);
         }
         if(this.§]!9§.particles)
         {
            this.§]!9§.particles.include(this.§#7§,this.§4>§);
         }
      }
      
      protected function §=J§() : void
      {
         this.§ H§(§^G§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§6!=§ = -1;
         this.§=J§();
         this.§!S§ = this.§9-§ = this.§7w§ = param1;
         this.§5s§ = this.§4!&§ = this.§8S§ = param2;
         this.§;D§ = 0;
         this.§7!&§.x = this.§7^§;
         this.§7!&§.y = this.§=s§;
         this.§7!&§.scale = §>m§;
         this.§&t§ = §>m§;
         if(Math.abs(this.§=+§.x - this.§%s§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§7^§ - this.§%s§.x) / (this.§=+§.x - this.§%s§.x) * §-!@§;
         }
         this.mDragging = true;
      }
      
      public function §>!-§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§;D§ += param1;
         var _loc3_:Number = this.§!S§ - this.§9-§;
         if(this.§4k§ > 0)
         {
            _loc2_ -= _loc3_ * §^]§.§ u§ / §#u§ / this.§4k§ * §-!@§;
            this.§4!§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§4!§ = true;
            }
            if(_loc2_ > §-!@§)
            {
               _loc2_ += (§-!@§ - _loc2_) * 0.3;
               this.§4!§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§9-§ = this.§!S§;
      }
      
      protected function §0f§() : Boolean
      {
         return this.mCurrentAction == §^G§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§!S§ = param1;
            this.§5s§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §^G§)
         {
            this.§ H§(§^!,§);
            if(param1 > 0)
            {
               this.§!S§ = param1;
            }
            _loc3_ = Math.abs(this.§!S§ - this.§7w§);
            if(this.§;D§ < §&!+§ && _loc3_ >= §?K§ && _loc3_ >= §,7§ * this.§;D§ / 1000)
            {
               if(this.§!S§ < this.§7w§)
               {
                  this.§ H§(§@!7§);
               }
               else
               {
                  this.§ H§(§?%§);
               }
               this.§!!%§ = _loc3_ / this.§;D§ * 10;
               this.§4!§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§4!§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §-!@§)
               {
                  this.§4!§ = true;
               }
            }
            else if(this.§;D§ < §=9§)
            {
               this.§3^§();
               this.§!!%§ = §-!@§ / (§-!@§ / 500);
               this.§4!§ = true;
            }
            else
            {
               this.§>!-§(0);
               this.§&V§(0);
               this.§!!%§ = §-!@§ / (§-!@§ / 500);
               this.§4!§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §3^§() : void
      {
         if(this.mCurrentAction == §@!7§)
         {
            this.§ H§(§?%§);
         }
         else if(this.mCurrentAction == §?%§)
         {
            this.§ H§(§@!7§);
         }
         else if(this.mCurrentCameraSliderLocation >= §-!@§ / 2)
         {
            this.§ H§(§?%§);
         }
         else if(this.mCurrentCameraSliderLocation <= §-!@§ / 2)
         {
            this.§ H§(§@!7§);
         }
      }
      
      public function §&V§(param1:int) : void
      {
         this.§6!=§ = param1;
         if(this.mCurrentCameraSliderLocation < §-!@§ / 2)
         {
            this.§ H§(§?%§);
         }
         else
         {
            this.§ H§(§@!7§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§ H§(§?%§);
      }
      
      public function goToCastleView() : void
      {
         this.§ H§(§@!7§);
      }
      
      public function § H§(param1:int) : void
      {
         this.§7!&§.x = this.§7^§;
         this.§7!&§.y = this.§=s§;
         this.§7!&§.scale = §>m§;
         this.§&t§ = §>m§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §-!@§)
         {
            return true;
         }
         if(this.mCurrentAction == §@!7§)
         {
            return true;
         }
         return false;
      }
      
      public function §-H§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §?%§)
         {
            return true;
         }
         return false;
      }
      
      public function §1>§(param1:§91§) : void
      {
         this.§[E§ = param1;
         if(this.§[E§ != null)
         {
            this.§-d§ = new §91§();
            this.§-d§.x = this.§7^§;
            this.§-d§.y = this.§=s§;
            this.§-d§.scale = §>m§;
         }
         else
         {
            this.§7^§ = this.§-d§.x;
            this.§=s§ = this.§-d§.y;
            §>m§ = this.§-d§.scale;
            this.§-d§ = null;
         }
      }
      
      protected function §][§() : void
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
         var _loc3_:Number = this.§=!B§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§%j§,Math.min(this.§5+§,_loc3_));
         if(_loc3_ != this.§=!B§)
         {
            this.§=!B§ = _loc3_;
            this.§][§();
         }
      }
      
      public function §9F§() : Number
      {
         return (this.§ i§ - this.§%j§) / (this.§5+§ - this.§%j§);
      }
      
      public function §00§(param1:Number) : void
      {
         this.§ i§ = Math.min(Math.max(param1,0),1) * (this.§5+§ - this.§%j§) + this.§%j§;
      }
      
      public function § U§() : void
      {
         this.§=!B§ = Math.max(this.§=!B§ - 0.5,0.5);
      }
      
      public function §,o§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§=!B§;
         _loc1_ += " mXcenterB2: " + this.§7^§;
         _loc1_ += " mYcenterB2: " + this.§=s§;
         _loc1_ += " mXcenterB2target: " + this.§=!B§;
         _loc1_ += "\n mYcenterB2target: " + this.§=!B§;
         _loc1_ += " mXcenterB2previous: " + this.§=!B§;
         _loc1_ += " mYcenterB2previous: " + this.§=!B§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§=!B§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§=!B§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§=!B§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§=!B§;
         _loc1_ += " mTargetScale: " + this.§=!B§;
         _loc1_ += " mTargetScalePrevious: " + this.§=!B§;
         _loc1_ += " mCastleCameraX: " + this.§=!B§;
         _loc1_ += "\n mCastleCameraY: " + this.§=!B§;
         _loc1_ += " mCastleCameraScale: " + this.§=!B§;
         _loc1_ += " mBirdCameraX: " + this.§=!B§;
         _loc1_ += " mBirdCameraY: " + this.§=!B§;
         _loc1_ += " mBirdCameraScale: " + this.§=!B§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§=!B§;
         _loc1_ += " mScreenTopScroll: " + this.§=!B§;
         _loc1_ += " mDragging: " + this.§=!B§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§=!B§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§=!B§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§=!B§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§=!B§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§=!B§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§=!B§;
         _loc1_ += " mDraggingTimer: " + this.§=!B§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§=!B§;
         _loc1_ += " mCameraBorderRight: " + this.§=!B§;
         _loc1_ += " mCameraBorderSky: " + this.§=!B§;
         _loc1_ += " mCameraBorderGround: " + this.§=!B§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§=!B§ + "\n ");
      }
   }
}
