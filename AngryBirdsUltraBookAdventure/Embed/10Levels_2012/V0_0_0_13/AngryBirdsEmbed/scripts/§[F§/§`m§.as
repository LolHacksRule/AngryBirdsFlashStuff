package §[F§
{
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §%x§.§;C§;
   import §0!<§.§#y§;
   import §>!C§.§'H§;
   import §>!C§.§9R§;
   import §]!9§.§>2§;
   
   public class §`m§
   {
      
      public static const §`n§:Number = 1.25;
      
      public static const §4a§:Number = 0.15;
      
      public static const §5t§:Number = §,!!§.§;]§ * §#;§.§`!2§;
      
      public static const §]@§:Number = §,!!§.§3L§ * §#;§.§`!2§;
      
      public static const §0`§:Number = 0.1;
      
      public static const §>!=§:int = 1500;
      
      public static const §>9§:int = 10;
      
      public static const §@!&§:int = 15;
      
      public static const §%!6§:int = 300;
      
      public static const §`c§:int = 1000;
      
      public static const §&9§:int = 10000;
      
      public static const §0!>§:int = §&9§ / 50;
      
      public static const §7c§:int = 0;
      
      public static const §4J§:int = 1;
      
      public static const §1!7§:int = 2;
      
      public static const §@M§:int = 3;
      
      public static const §!p§:int = 4;
      
      public static const §@j§:int = 5;
      
      public static const §%T§:String = "CASTLE";
      
      public static const §;!,§:String = "SLINGSHOT";
      
      protected static var §=z§:Number;
      
      public static var §0!6§:Number;
      
      public static var §15§:Number;
      
      public static const §]6§:Number = 2000;
       
      
      private var §!+§:Number = 1.0;
      
      private var §-W§:Number = 0.2;
      
      protected var §1Z§:Number;
      
      protected var §[!=§:Number;
      
      protected var §#!F§:Number;
      
      public var §7C§:§#;§;
      
      public var §+q§:Number;
      
      public var §[@§:Number;
      
      private var §@h§:§,A§;
      
      private var §2!;§:§,A§;
      
      public var §6`§:Number;
      
      public var §,!E§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §@!'§:Number;
      
      public var §>b§:Number;
      
      public var §9_§:Number;
      
      public var §0p§:Number;
      
      private var §2>§:Number;
      
      private var §3!@§:§0!§;
      
      private var §6!5§:§0!§;
      
      protected var §^3§:Number = 0;
      
      protected var §3c§:Number = 0;
      
      protected var §&!5§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §-p§:Number = 0;
      
      public var §=6§:Boolean = true;
      
      public var §[V§:Number = 0;
      
      public var §!!D§:Number = 0;
      
      public var §2R§:Number = 0;
      
      public var §-!>§:Number = 0;
      
      public var §+"§:Number = 0;
      
      public var §>s§:Number = 0;
      
      public var §'!>§:Number = 0;
      
      public var §6C§:Number = 0;
      
      public var §7]§:Number = 0;
      
      private var §5-§:§0!§;
      
      public var §#! §:Number = 0;
      
      private var §-c§:Number = 0;
      
      private var §#!E§:Number = 0;
      
      private var §&=§:§'H§ = null;
      
      private var §6!9§:§'H§ = null;
      
      public function §`m§(param1:§#;§, param2:§9R§, param3:Number = 1.0)
      {
         this.§5-§ = new §0!§(0,0,1,false);
         super();
         this.§[!=§ = 0;
         this.§#!F§ = 0;
         this.§7C§ = param1;
         §`m§.§=z§ = 1;
         this.§!+§ = Math.max(1,Math.min(2,param3));
         this.§1Z§ = this.§!+§;
         this.§6^§(param2);
         if(this.§@h§ && this.§2!;§)
         {
            this.§1#§();
            this.§^3§ = this.§@h§.x - this.§2!;§.x;
            this.§3c§ = this.§@h§.y - this.§2!;§.y;
            this.§&!5§ = this.§@h§.scale - this.§2!;§.scale;
            this.§[!=§ = this.§@h§.x;
            this.§#!F§ = this.§@h§.y;
            §=z§ = this.§@h§.scale * this.§1Z§;
         }
         this.mCurrentCameraSliderLocation = §&9§;
         this.§=6§ = true;
         this.§-p§ = §&9§ / 500;
      }
      
      private static function §+K§() : Number
      {
         var _loc1_:Number = §,!!§.§0!3§ / §,!!§.§,`§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §;`§() : Number
      {
         return §=z§ * §+K§();
      }
      
      public function get §=G§() : Number
      {
         return this.§1Z§;
      }
      
      public function set §=G§(param1:Number) : void
      {
         this.§1Z§ = param1;
      }
      
      public function get §%!A§() : Number
      {
         return this.§2>§;
      }
      
      public function §>!<§() : Number
      {
         return §5t§ / (this.§>b§ - this.§@!'§);
      }
      
      public function get §3Z§() : Number
      {
         return this.§!+§;
      }
      
      public function get §4#§() : Number
      {
         return this.§-W§;
      }
      
      public function §,!&§(param1:Number) : void
      {
         this.§1Z§ = param1;
         this.§!%§();
         this.§"6§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §@j§)
         {
            return;
         }
         this.goToCastleView();
         this.§[V§ = 2000;
         this.§>P§();
         this.§@o§();
         this.§=I§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§[!=§ = this.§2!;§.x;
         this.§#!F§ = this.§2!;§.y;
         this.§=6§ = false;
         this.§-p§ = §&9§ / 160000 * param1;
         this.§8!6§(§@j§);
      }
      
      public function §1#§() : void
      {
         this.§@!'§ = this.§2!;§.x - §5t§ / this.§2!;§.scale / 2;
         this.§>b§ = this.§@h§.x + §5t§ / this.§@h§.scale / 2;
         this.§9_§ = this.§7C§.§`,§.§=s§ - 20 * §#;§.§<!'§ * §#;§.§`!2§;
         this.§0p§ = this.§7C§.§`,§.§=s§ + 4;
         var _loc1_:Number = §5t§ / (this.§>b§ - this.§@!'§);
         this.§2>§ = this.§0p§ - §]@§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§7C§ = null;
      }
      
      public function §6^§(param1:§9R§) : void
      {
         var _loc3_:§'H§ = null;
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
         while(_loc2_ < param1.§`R§)
         {
            _loc3_ = param1.§#S§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§?'§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §]@§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §5t§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §;!,§)
            {
               this.§2!;§ = new §,A§(_loc9_,_loc10_,_loc13_,true);
               this.§6!5§ = new §0!§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §%T§)
            {
               this.§@h§ = new §,A§(_loc9_,_loc10_,_loc13_,false);
               this.§3!@§ = new §0!§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §#y§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §=a§(param1:§9R§) : void
      {
         var _loc2_:§'H§ = new §'H§();
         _loc2_.id = §;!,§;
         _loc2_.x = this.§2!;§.x;
         _loc2_.y = this.§2!;§.y;
         var _loc3_:Number = §5t§ / this.§2!;§.scale / 2;
         var _loc4_:Number = §]@§ / this.§2!;§.scale / 2;
         _loc2_.left = this.§2!;§.x - _loc3_;
         _loc2_.right = this.§2!;§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§'H§;
         (_loc5_ = new §'H§()).id = §%T§;
         _loc5_.x = this.§@h§.x;
         _loc5_.y = this.§@h§.y;
         var _loc6_:Number = §5t§ / this.§@h§.scale / 2;
         var _loc7_:Number = §]@§ / this.§@h§.scale / 2;
         _loc5_.left = this.§@h§.x - _loc6_;
         _loc5_.right = this.§@h§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§91§();
         param1.§''§(_loc2_);
         param1.§''§(_loc5_);
      }
      
      public function §?'§(param1:§'H§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §,!!§.§;]§ * 0.5 / _loc2_ * §#;§.§`!2§;
         var _loc4_:Number = param1.y - §,!!§.§3L§ * 0.5 / _loc2_ * §#;§.§`!2§;
         var _loc5_:Number = _loc3_ + §,!!§.§;]§ / _loc2_ * §#;§.§`!2§;
         var _loc6_:Number = _loc4_ + §,!!§.§3L§ / _loc2_ * §#;§.§`!2§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §>!3§(param1:§,A§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§-p§;
         if(_loc3_ >= §&9§)
         {
            _loc3_ = §&9§;
            this.§8!6§(§7c§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§8!6§(§7c§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §+9§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§-p§;
         var _loc4_:Number = -§&9§ * 0.7;
         if(_loc2_ >= §&9§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §&9§;
            }
            this.§-p§ = -this.§-p§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §1`§(param1:Number) : void
      {
         if(this.mCurrentAction == §@j§)
         {
            this.§+9§(param1);
         }
         else if(this.mCurrentAction == §4J§)
         {
            this.§>!3§(this.§@h§,param1);
         }
         else if(this.mCurrentAction == §1!7§)
         {
            this.§>!3§(this.§2!;§,-param1);
         }
         else if(this.mCurrentAction == §@M§)
         {
            this.§=6§ = true;
         }
         else if(this.mCurrentAction == §!p§)
         {
            this.§`q§(param1);
         }
      }
      
      public function §^!&§(param1:Number) : void
      {
         if(this.§&=§)
         {
            this.§[!=§ = this.§&=§.x;
            this.§#!F§ = this.§&=§.y;
            §=z§ = §5t§ / (this.§&=§.right - this.§&=§.left);
         }
         else
         {
            this.§!%§();
            this.§1`§(param1);
            this.§4u§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§>P§();
         this.§@o§();
         this.§=I§();
      }
      
      private function §3a§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§6!5§.scale + (this.§3!@§.scale - this.§6!5§.scale) * param1;
         var _loc4_:Number = this.§6!5§.x + (this.§3!@§.x - this.§6!5§.x) * param1;
         var _loc5_:Number = this.§6!5§.y + (this.§3!@§.y - this.§6!5§.y) * param1;
         this.§5-§.x -= (this.§5-§.x - _loc4_) * param2;
         this.§5-§.y -= (this.§5-§.y - _loc5_) * param2;
         this.§5-§.scale -= (this.§5-§.scale - _loc3_) * param2;
      }
      
      protected function §"6§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§^3§ != 0)
         {
            if(!this.§=6§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §&9§;
            this.§3a§(_loc3_,param2);
            this.§[!=§ = this.§5-§.x;
            this.§#!F§ = this.§5-§.y;
            §=z§ = this.§5-§.scale;
         }
      }
      
      public function §4u§(param1:Number, param2:Number) : void
      {
         var _loc5_:§>2§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §&9§)
         {
            this.§=6§ = true;
         }
         if(this.mCurrentAction == §@M§)
         {
            if(!this.§7C§.activeObject)
            {
               this.§8!6§(§4J§);
               this.§7]§ = §`c§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§7C§.activeObject).§%;§().GetPosition().x + (!!_loc5_.§ !%§ ? _loc5_.§ !%§ * §#;§.§`!2§ : 0);
               _loc7_ = _loc5_.§%;§().GetPosition().y + (!!_loc5_.§9-§ ? _loc5_.§9-§ * §#;§.§`!2§ : 0);
               if((_loc8_ = _loc5_.§%;§().GetLinearVelocity().x) > 0 && this.§^3§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§^3§ * §&9§;
               }
               if(param1 >= §&9§)
               {
                  param1 = §&9§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §&9§;
               this.§3a§(_loc9_,_loc4_);
               _loc10_ = this.§5-§.x - §5t§ * 0.5 / this.§5-§.scale;
               _loc11_ = this.§5-§.y - §]@§ * 0.5 / this.§5-§.scale;
               _loc12_ = this.§5-§.x + §5t§ * 0.5 / this.§5-§.scale;
               _loc13_ = this.§5-§.y + §]@§ * 0.5 / this.§5-§.scale;
               _loc14_ = 150 * §#;§.§`!2§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§@!'§,_loc15_);
               _loc17_ = Math.min(this.§>b§,_loc17_);
               _loc19_ = Math.abs(§5t§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§]@§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§5-§.scale)
               {
                  _loc21_ = this.§5-§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §5t§ * 0.5 / _loc21_ > this.§>b§)
               {
                  _loc15_ = (_loc17_ = this.§>b§) - §5t§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§@!'§)
                  {
                     _loc15_ = this.§@!'§;
                  }
               }
               if(_loc22_ - §5t§ * 0.5 / _loc21_ < this.§@!'§)
               {
                  _loc17_ = (_loc15_ = this.§@!'§) + §5t§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§>b§)
                  {
                     _loc17_ = this.§>b§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§5t§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §5t§ * 0.5 / _loc21_ < this.§9_§)
               {
                  _loc23_ = this.§9_§ + §5t§ * 0.5 / _loc21_;
               }
               this.§[!=§ -= (this.§[!=§ - _loc22_) * _loc4_;
               this.§#! § -= (this.§#! § - _loc21_) * _loc4_;
               §=z§ = this.§#! §;
               this.§#!F§ -= (this.§#!F§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§>b§ || _loc6_ <= this.§@!'§)
               {
                  this.§5-§.scale = §=z§;
                  this.§5-§.x = this.§[!=§;
                  this.§5-§.y = this.§#!F§;
               }
            }
         }
         else
         {
            this.§"6§(param1,_loc4_);
         }
      }
      
      public function §"]§(param1:Number, param2:Number) : void
      {
         this.§-c§ = param1;
         this.§#!E§ = param2;
      }
      
      private function §8!"§(param1:§0!§, param2:§,A§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §4a§ + (param2.scale - §4a§) * this.§1Z§ * §`m§.§+K§();
         if(§5t§ / param1.scale > this.§>b§ - this.§@!'§)
         {
            _loc3_ = §5t§ / (this.§>b§ - this.§@!'§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §&Q§(param1:§0!§, param2:§,A§) : Boolean
      {
         var _loc3_:Boolean = this.§8!"§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §]@§ * 0.5 / param1.scale;
         var _loc5_:Number = §]@§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §5t§ * 0.5 / param1.scale) < this.§@!'§ && param1.§<M§)
         {
            param1.x += this.§@!'§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §5t§ * 0.5 / param1.scale) > this.§>b§ && !param1.§<M§)
         {
            param1.x += this.§>b§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §@i§(param1:§0!§, param2:§,A§) : Number
      {
         return (param1.scale - §4a§) / (§`m§.§+K§() * (param2.scale - §4a§));
      }
      
      protected function §!%§() : void
      {
         this.§&Q§(this.§6!5§,this.§2!;§);
         var _loc1_:Number = this.§@i§(this.§6!5§,this.§2!;§);
         this.§&Q§(this.§3!@§,this.§@h§);
         var _loc2_:Number = this.§@i§(this.§3!@§,this.§@h§);
         this.§1Z§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §>P§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§7C§.sprite)
         {
            _loc1_ = §,!!§.§#9§() / §,!!§.§0!3§ - §,!!§.§3L§ >> 1;
            §0!6§ = this.§7C§.sprite.x = §#;§.§9!7§ * ((1 - §`m§.§;`§) / 2);
            §15§ = this.§7C§.sprite.y = _loc1_ + §#;§.§<!'§ * (1 - §`m§.§;`§) * §;C§.§8!2§;
         }
      }
      
      public function §=I§() : void
      {
         if(this.§7C§.sprite)
         {
            this.§7C§.sprite.scaleX = §;`§;
            this.§7C§.sprite.scaleY = §;`§;
         }
      }
      
      public function §@o§() : void
      {
         var _loc1_:Number = this.§[!=§ / §#;§.§`!2§ + this.§-c§;
         var _loc2_:Number = this.§#!F§ / §#;§.§`!2§ + this.§#!E§;
         this.§6`§ = _loc1_ - §#;§.§9!7§ / 2 * §,!!§.§0!3§ / §,!!§.§2J§;
         this.§,!E§ = _loc2_ - §#;§.§<!'§ / 2 + §;C§.§4!F§;
         if(this.§7C§.background)
         {
            this.§7C§.background.§^-§(this.§6`§,this.§,!E§);
         }
         if(this.§7C§.objects)
         {
            this.§7C§.objects.§^-§(this.§6`§,this.§,!E§);
         }
         if(this.§7C§.§-K§)
         {
            this.§7C§.§-K§.§^-§(this.§6`§,this.§,!E§,§;`§);
         }
         if(this.§7C§.slingshot)
         {
            this.§7C§.slingshot.§^-§(this.§6`§,this.§,!E§);
         }
         if(this.§7C§.particles)
         {
            this.§7C§.particles.§^-§(this.§6`§,this.§,!E§);
         }
      }
      
      protected function §^!>§() : void
      {
         this.§8!6§(§!p§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§7]§ = -1;
         this.§^!>§();
         this.§+"§ = this.§'!>§ = this.§2R§ = param1;
         this.§>s§ = this.§6C§ = this.§-!>§ = param2;
         this.§!!D§ = 0;
         this.§5-§.x = this.§[!=§;
         this.§5-§.y = this.§#!F§;
         this.§5-§.scale = §=z§;
         this.§#! § = §=z§;
         if(Math.abs(this.§3!@§.x - this.§6!5§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§[!=§ - this.§6!5§.x) / (this.§3!@§.x - this.§6!5§.x) * §&9§;
         }
         this.mDragging = true;
      }
      
      public function §`q§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§!!D§ += param1;
         var _loc3_:Number = this.§+"§ - this.§'!>§;
         if(this.§^3§ > 0)
         {
            _loc2_ -= _loc3_ * §#;§.§`!2§ / §;`§ / this.§^3§ * §&9§;
            this.§=6§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§=6§ = true;
            }
            if(_loc2_ > §&9§)
            {
               _loc2_ += (§&9§ - _loc2_) * 0.3;
               this.§=6§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§'!>§ = this.§+"§;
      }
      
      protected function §>!0§() : Boolean
      {
         return this.mCurrentAction == §!p§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§+"§ = param1;
            this.§>s§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §!p§)
         {
            this.§8!6§(§7c§);
            if(param1 > 0)
            {
               this.§+"§ = param1;
            }
            _loc3_ = Math.abs(this.§+"§ - this.§2R§);
            if(this.§!!D§ < §>!=§ && _loc3_ >= §>9§ && _loc3_ >= §@!&§ * this.§!!D§ / 1000)
            {
               if(this.§+"§ < this.§2R§)
               {
                  this.§8!6§(§4J§);
               }
               else
               {
                  this.§8!6§(§1!7§);
               }
               this.§-p§ = _loc3_ / this.§!!D§ * 10;
               this.§=6§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§=6§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §&9§)
               {
                  this.§=6§ = true;
               }
            }
            else if(this.§!!D§ < §%!6§)
            {
               this.§?! §();
               this.§-p§ = §&9§ / (§&9§ / 500);
               this.§=6§ = true;
            }
            else
            {
               this.§`q§(0);
               this.§ !#§(0);
               this.§-p§ = §&9§ / (§&9§ / 500);
               this.§=6§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §?! §() : void
      {
         if(this.mCurrentAction == §4J§)
         {
            this.§8!6§(§1!7§);
         }
         else if(this.mCurrentAction == §1!7§)
         {
            this.§8!6§(§4J§);
         }
         else if(this.mCurrentCameraSliderLocation >= §&9§ / 2)
         {
            this.§8!6§(§1!7§);
         }
         else if(this.mCurrentCameraSliderLocation <= §&9§ / 2)
         {
            this.§8!6§(§4J§);
         }
      }
      
      public function § !#§(param1:int) : void
      {
         this.§7]§ = param1;
         if(this.mCurrentCameraSliderLocation < §&9§ / 2)
         {
            this.§8!6§(§1!7§);
         }
         else
         {
            this.§8!6§(§4J§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§8!6§(§1!7§);
      }
      
      public function goToCastleView() : void
      {
         this.§8!6§(§4J§);
      }
      
      public function §8!6§(param1:int) : void
      {
         this.§5-§.x = this.§[!=§;
         this.§5-§.y = this.§#!F§;
         this.§5-§.scale = §=z§;
         this.§#! § = §=z§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §&9§)
         {
            return true;
         }
         if(this.mCurrentAction == §4J§)
         {
            return true;
         }
         return false;
      }
      
      public function §3F§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §1!7§)
         {
            return true;
         }
         return false;
      }
      
      public function §`!,§(param1:§'H§) : void
      {
         this.§&=§ = param1;
         if(this.§&=§ != null)
         {
            this.§6!9§ = new §'H§();
            this.§6!9§.x = this.§[!=§;
            this.§6!9§.y = this.§#!F§;
            this.§6!9§.scale = §=z§;
         }
         else
         {
            this.§[!=§ = this.§6!9§.x;
            this.§#!F§ = this.§6!9§.y;
            §=z§ = this.§6!9§.scale;
            this.§6!9§ = null;
         }
      }
      
      protected function §#!,§() : void
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
         var _loc3_:Number = this.§1Z§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§4#§,Math.min(this.§3Z§,_loc3_));
         if(_loc3_ != this.§1Z§)
         {
            this.§1Z§ = _loc3_;
            this.§#!,§();
         }
      }
      
      public function §8!0§() : Number
      {
         return (this.§=G§ - this.§4#§) / (this.§3Z§ - this.§4#§);
      }
      
      public function §1!&§(param1:Number) : void
      {
         this.§=G§ = Math.min(Math.max(param1,0),1) * (this.§3Z§ - this.§4#§) + this.§4#§;
      }
      
      public function §<>§() : void
      {
         this.§1Z§ = Math.max(this.§1Z§ - 0.5,0.5);
      }
      
      public function §>N§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§1Z§;
         _loc1_ += " mXcenterB2: " + this.§[!=§;
         _loc1_ += " mYcenterB2: " + this.§#!F§;
         _loc1_ += " mXcenterB2target: " + this.§1Z§;
         _loc1_ += "\n mYcenterB2target: " + this.§1Z§;
         _loc1_ += " mXcenterB2previous: " + this.§1Z§;
         _loc1_ += " mYcenterB2previous: " + this.§1Z§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§1Z§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§1Z§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§1Z§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§1Z§;
         _loc1_ += " mTargetScale: " + this.§1Z§;
         _loc1_ += " mTargetScalePrevious: " + this.§1Z§;
         _loc1_ += " mCastleCameraX: " + this.§1Z§;
         _loc1_ += "\n mCastleCameraY: " + this.§1Z§;
         _loc1_ += " mCastleCameraScale: " + this.§1Z§;
         _loc1_ += " mBirdCameraX: " + this.§1Z§;
         _loc1_ += " mBirdCameraY: " + this.§1Z§;
         _loc1_ += " mBirdCameraScale: " + this.§1Z§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§1Z§;
         _loc1_ += " mScreenTopScroll: " + this.§1Z§;
         _loc1_ += " mDragging: " + this.§1Z§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§1Z§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§1Z§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§1Z§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§1Z§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§1Z§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§1Z§;
         _loc1_ += " mDraggingTimer: " + this.§1Z§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§1Z§;
         _loc1_ += " mCameraBorderRight: " + this.§1Z§;
         _loc1_ += " mCameraBorderSky: " + this.§1Z§;
         _loc1_ += " mCameraBorderGround: " + this.§1Z§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§1Z§ + "\n ");
      }
   }
}
