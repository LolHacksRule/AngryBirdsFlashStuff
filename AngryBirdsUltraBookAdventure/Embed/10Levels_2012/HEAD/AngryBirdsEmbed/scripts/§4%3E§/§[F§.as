package §4>§
{
   import § !3§.§'§;
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §%x§.§;C§;
   import §2§.§0!<§;
   import §>!C§.§3y§;
   import §>!C§.§<-§;
   
   public class §[F§
   {
      
      public static const §>N§:Number = 1.25;
      
      public static const §`n§:Number = 0.15;
      
      public static const §4a§:Number = §,!!§.§;]§ * §#;§.§`!2§;
      
      public static const §5t§:Number = §,!!§.§3L§ * §#;§.§`!2§;
      
      public static const §]@§:Number = 0.1;
      
      public static const §0`§:int = 1500;
      
      public static const §>!=§:int = 10;
      
      public static const §>9§:int = 15;
      
      public static const §@!&§:int = 300;
      
      public static const §%!6§:int = 1000;
      
      public static const §`c§:int = 10000;
      
      public static const §&9§:int = §`c§ / 50;
      
      public static const §0!>§:int = 0;
      
      public static const §7c§:int = 1;
      
      public static const §4J§:int = 2;
      
      public static const §1!7§:int = 3;
      
      public static const §@M§:int = 4;
      
      public static const §!p§:int = 5;
      
      public static const §@j§:String = "CASTLE";
      
      public static const §%T§:String = "SLINGSHOT";
      
      protected static var §;!,§:Number;
      
      public static var §=z§:Number;
      
      public static var §0!6§:Number;
      
      public static const §15§:Number = 2000;
       
      
      private var §`m§:Number = 1.0;
      
      private var §!+§:Number = 0.2;
      
      protected var §-W§:Number;
      
      protected var §1Z§:Number;
      
      protected var §[!=§:Number;
      
      public var §7C§:§#;§;
      
      public var §#!F§:Number;
      
      public var §+q§:Number;
      
      private var §[@§:§;`§;
      
      private var §@h§:§;`§;
      
      public var §2!;§:Number;
      
      public var §6`§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §,!E§:Number;
      
      public var §@!'§:Number;
      
      public var §>b§:Number;
      
      public var §9_§:Number;
      
      private var §0p§:Number;
      
      private var §2>§:§<M§;
      
      private var §3!@§:§<M§;
      
      protected var §6!5§:Number = 0;
      
      protected var §^3§:Number = 0;
      
      protected var §3c§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §&!5§:Number = 0;
      
      public var §-p§:Boolean = true;
      
      public var §=6§:Number = 0;
      
      public var §[V§:Number = 0;
      
      public var §!!D§:Number = 0;
      
      public var §2R§:Number = 0;
      
      public var §-!>§:Number = 0;
      
      public var §+"§:Number = 0;
      
      public var §>s§:Number = 0;
      
      public var §'!>§:Number = 0;
      
      public var §6C§:Number = 0;
      
      private var §7]§:§<M§;
      
      public var §5-§:Number = 0;
      
      private var §#! §:Number = 0;
      
      private var §-c§:Number = 0;
      
      private var §#!E§:§3y§ = null;
      
      private var §&=§:§3y§ = null;
      
      public function §[F§(param1:§#;§, param2:§<-§, param3:Number = 1.0)
      {
         this.§7]§ = new §<M§(0,0,1,false);
         super();
         this.§1Z§ = 0;
         this.§[!=§ = 0;
         this.§7C§ = param1;
         §[F§.§;!,§ = 1;
         this.§`m§ = Math.max(1,Math.min(2,param3));
         this.§-W§ = this.§`m§;
         this.§1#§(param2);
         if(this.§[@§ && this.§@h§)
         {
            this.§,!&§();
            this.§6!5§ = this.§[@§.x - this.§@h§.x;
            this.§^3§ = this.§[@§.y - this.§@h§.y;
            this.§3c§ = this.§[@§.scale - this.§@h§.scale;
            this.§1Z§ = this.§[@§.x;
            this.§[!=§ = this.§[@§.y;
            §;!,§ = this.§[@§.scale * this.§-W§;
         }
         this.mCurrentCameraSliderLocation = §`c§;
         this.§-p§ = true;
         this.§&!5§ = §`c§ / 500;
      }
      
      private static function §]6§() : Number
      {
         var _loc1_:Number = §,!!§.§0!3§ / §,!!§.§,`§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §+K§() : Number
      {
         return §;!,§ * §]6§();
      }
      
      public function get §6!9§() : Number
      {
         return this.§-W§;
      }
      
      public function set §6!9§(param1:Number) : void
      {
         this.§-W§ = param1;
      }
      
      public function get §=G§() : Number
      {
         return this.§0p§;
      }
      
      public function §%!A§() : Number
      {
         return §4a§ / (this.§@!'§ - this.§,!E§);
      }
      
      public function get §>!<§() : Number
      {
         return this.§`m§;
      }
      
      public function get §3Z§() : Number
      {
         return this.§!+§;
      }
      
      public function §4#§(param1:Number) : void
      {
         this.§-W§ = param1;
         this.§@i§();
         this.§3a§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §!p§)
         {
            return;
         }
         this.goToCastleView();
         this.§=6§ = 2000;
         this.§!%§();
         this.§=I§();
         this.§>P§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§1Z§ = this.§@h§.x;
         this.§[!=§ = this.§@h§.y;
         this.§-p§ = false;
         this.§&!5§ = §`c§ / 160000 * param1;
         this.§ !#§(§!p§);
      }
      
      public function §,!&§() : void
      {
         this.§,!E§ = this.§@h§.x - §4a§ / this.§@h§.scale / 2;
         this.§@!'§ = this.§[@§.x + §4a§ / this.§[@§.scale / 2;
         this.§>b§ = this.§7C§.§`,§.§=s§ - 20 * §#;§.§<!'§ * §#;§.§`!2§;
         this.§9_§ = this.§7C§.§`,§.§=s§ + 4;
         var _loc1_:Number = §4a§ / (this.§@!'§ - this.§,!E§);
         this.§0p§ = this.§9_§ - §5t§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§7C§ = null;
      }
      
      public function §1#§(param1:§<-§) : void
      {
         var _loc3_:§3y§ = null;
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
         while(_loc2_ < param1.§5C§)
         {
            _loc3_ = param1.§-P§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§=a§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §5t§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §4a§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §%T§)
            {
               this.§@h§ = new §;`§(_loc9_,_loc10_,_loc13_,true);
               this.§3!@§ = new §<M§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §@j§)
            {
               this.§[@§ = new §;`§(_loc9_,_loc10_,_loc13_,false);
               this.§2>§ = new §<M§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §0!<§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §6^§(param1:§<-§) : void
      {
         var _loc2_:§3y§ = new §3y§();
         _loc2_.id = §%T§;
         _loc2_.x = this.§@h§.x;
         _loc2_.y = this.§@h§.y;
         var _loc3_:Number = §4a§ / this.§@h§.scale / 2;
         var _loc4_:Number = §5t§ / this.§@h§.scale / 2;
         _loc2_.left = this.§@h§.x - _loc3_;
         _loc2_.right = this.§@h§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§3y§;
         (_loc5_ = new §3y§()).id = §@j§;
         _loc5_.x = this.§[@§.x;
         _loc5_.y = this.§[@§.y;
         var _loc6_:Number = §4a§ / this.§[@§.scale / 2;
         var _loc7_:Number = §5t§ / this.§[@§.scale / 2;
         _loc5_.left = this.§[@§.x - _loc6_;
         _loc5_.right = this.§[@§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§;$§();
         param1.§#S§(_loc2_);
         param1.§#S§(_loc5_);
      }
      
      public function §=a§(param1:§3y§) : void
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
      
      protected function §?'§(param1:§;`§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§&!5§;
         if(_loc3_ >= §`c§)
         {
            _loc3_ = §`c§;
            this.§ !#§(§0!>§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§ !#§(§0!>§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §>!3§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§&!5§;
         var _loc4_:Number = -§`c§ * 0.7;
         if(_loc2_ >= §`c§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §`c§;
            }
            this.§&!5§ = -this.§&!5§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §+9§(param1:Number) : void
      {
         if(this.mCurrentAction == §!p§)
         {
            this.§>!3§(param1);
         }
         else if(this.mCurrentAction == §7c§)
         {
            this.§?'§(this.§[@§,param1);
         }
         else if(this.mCurrentAction == §4J§)
         {
            this.§?'§(this.§@h§,-param1);
         }
         else if(this.mCurrentAction == §1!7§)
         {
            this.§-p§ = true;
         }
         else if(this.mCurrentAction == §@M§)
         {
            this.§^!>§(param1);
         }
      }
      
      public function §1`§(param1:Number) : void
      {
         if(this.§#!E§)
         {
            this.§1Z§ = this.§#!E§.x;
            this.§[!=§ = this.§#!E§.y;
            §;!,§ = §4a§ / (this.§#!E§.right - this.§#!E§.left);
         }
         else
         {
            this.§@i§();
            this.§+9§(param1);
            this.§"6§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§!%§();
         this.§=I§();
         this.§>P§();
      }
      
      private function §^!&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§3!@§.scale + (this.§2>§.scale - this.§3!@§.scale) * param1;
         var _loc4_:Number = this.§3!@§.x + (this.§2>§.x - this.§3!@§.x) * param1;
         var _loc5_:Number = this.§3!@§.y + (this.§2>§.y - this.§3!@§.y) * param1;
         this.§7]§.x -= (this.§7]§.x - _loc4_) * param2;
         this.§7]§.y -= (this.§7]§.y - _loc5_) * param2;
         this.§7]§.scale -= (this.§7]§.scale - _loc3_) * param2;
      }
      
      protected function §3a§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§6!5§ != 0)
         {
            if(!this.§-p§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §`c§;
            this.§^!&§(_loc3_,param2);
            this.§1Z§ = this.§7]§.x;
            this.§[!=§ = this.§7]§.y;
            §;!,§ = this.§7]§.scale;
         }
      }
      
      public function §"6§(param1:Number, param2:Number) : void
      {
         var _loc5_:§'§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §`c§)
         {
            this.§-p§ = true;
         }
         if(this.mCurrentAction == §1!7§)
         {
            if(!this.§7C§.activeObject)
            {
               this.§ !#§(§7c§);
               this.§6C§ = §%!6§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§7C§.activeObject).§9! §().GetPosition().x + (!!_loc5_.§&g§ ? _loc5_.§&g§ * §#;§.§`!2§ : 0);
               _loc7_ = _loc5_.§9! §().GetPosition().y + (!!_loc5_.§ !%§ ? _loc5_.§ !%§ * §#;§.§`!2§ : 0);
               if((_loc8_ = _loc5_.§9! §().GetLinearVelocity().x) > 0 && this.§6!5§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§6!5§ * §`c§;
               }
               if(param1 >= §`c§)
               {
                  param1 = §`c§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §`c§;
               this.§^!&§(_loc9_,_loc4_);
               _loc10_ = this.§7]§.x - §4a§ * 0.5 / this.§7]§.scale;
               _loc11_ = this.§7]§.y - §5t§ * 0.5 / this.§7]§.scale;
               _loc12_ = this.§7]§.x + §4a§ * 0.5 / this.§7]§.scale;
               _loc13_ = this.§7]§.y + §5t§ * 0.5 / this.§7]§.scale;
               _loc14_ = 150 * §#;§.§`!2§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§,!E§,_loc15_);
               _loc17_ = Math.min(this.§@!'§,_loc17_);
               _loc19_ = Math.abs(§4a§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§5t§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§7]§.scale)
               {
                  _loc21_ = this.§7]§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §4a§ * 0.5 / _loc21_ > this.§@!'§)
               {
                  _loc15_ = (_loc17_ = this.§@!'§) - §4a§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§,!E§)
                  {
                     _loc15_ = this.§,!E§;
                  }
               }
               if(_loc22_ - §4a§ * 0.5 / _loc21_ < this.§,!E§)
               {
                  _loc17_ = (_loc15_ = this.§,!E§) + §4a§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§@!'§)
                  {
                     _loc17_ = this.§@!'§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§4a§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §4a§ * 0.5 / _loc21_ < this.§>b§)
               {
                  _loc23_ = this.§>b§ + §4a§ * 0.5 / _loc21_;
               }
               this.§1Z§ -= (this.§1Z§ - _loc22_) * _loc4_;
               this.§5-§ -= (this.§5-§ - _loc21_) * _loc4_;
               §;!,§ = this.§5-§;
               this.§[!=§ -= (this.§[!=§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§@!'§ || _loc6_ <= this.§,!E§)
               {
                  this.§7]§.scale = §;!,§;
                  this.§7]§.x = this.§1Z§;
                  this.§7]§.y = this.§[!=§;
               }
            }
         }
         else
         {
            this.§3a§(param1,_loc4_);
         }
      }
      
      public function §4u§(param1:Number, param2:Number) : void
      {
         this.§#! § = param1;
         this.§-c§ = param2;
      }
      
      private function §"]§(param1:§<M§, param2:§;`§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §`n§ + (param2.scale - §`n§) * this.§-W§ * §[F§.§]6§();
         if(§4a§ / param1.scale > this.§@!'§ - this.§,!E§)
         {
            _loc3_ = §4a§ / (this.§@!'§ - this.§,!E§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §8!"§(param1:§<M§, param2:§;`§) : Boolean
      {
         var _loc3_:Boolean = this.§"]§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §5t§ * 0.5 / param1.scale;
         var _loc5_:Number = §5t§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §4a§ * 0.5 / param1.scale) < this.§,!E§ && param1.§6!>§)
         {
            param1.x += this.§,!E§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §4a§ * 0.5 / param1.scale) > this.§@!'§ && !param1.§6!>§)
         {
            param1.x += this.§@!'§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §&Q§(param1:§<M§, param2:§;`§) : Number
      {
         return (param1.scale - §`n§) / (§[F§.§]6§() * (param2.scale - §`n§));
      }
      
      protected function §@i§() : void
      {
         this.§8!"§(this.§3!@§,this.§@h§);
         var _loc1_:Number = this.§&Q§(this.§3!@§,this.§@h§);
         this.§8!"§(this.§2>§,this.§[@§);
         var _loc2_:Number = this.§&Q§(this.§2>§,this.§[@§);
         this.§-W§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §!%§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§7C§.sprite)
         {
            _loc1_ = §,!!§.§#9§() / §,!!§.§0!3§ - §,!!§.§3L§ >> 1;
            §=z§ = this.§7C§.sprite.x = §#;§.§9!7§ * ((1 - §[F§.§+K§) / 2);
            §0!6§ = this.§7C§.sprite.y = _loc1_ + §#;§.§<!'§ * (1 - §[F§.§+K§) * §;C§.§8!2§;
         }
      }
      
      public function §>P§() : void
      {
         if(this.§7C§.sprite)
         {
            this.§7C§.sprite.scaleX = §+K§;
            this.§7C§.sprite.scaleY = §+K§;
         }
      }
      
      public function §=I§() : void
      {
         var _loc1_:Number = this.§1Z§ / §#;§.§`!2§ + this.§#! §;
         var _loc2_:Number = this.§[!=§ / §#;§.§`!2§ + this.§-c§;
         this.§2!;§ = _loc1_ - §#;§.§9!7§ / 2 * §,!!§.§0!3§ / §,!!§.§2J§;
         this.§6`§ = _loc2_ - §#;§.§<!'§ / 2 + §;C§.§4!F§;
         if(this.§7C§.background)
         {
            this.§7C§.background.§^-§(this.§2!;§,this.§6`§);
         }
         if(this.§7C§.objects)
         {
            this.§7C§.objects.§^-§(this.§2!;§,this.§6`§);
         }
         if(this.§7C§.§-K§)
         {
            this.§7C§.§-K§.§^-§(this.§2!;§,this.§6`§,§+K§);
         }
         if(this.§7C§.slingshot)
         {
            this.§7C§.slingshot.§^-§(this.§2!;§,this.§6`§);
         }
         if(this.§7C§.particles)
         {
            this.§7C§.particles.§^-§(this.§2!;§,this.§6`§);
         }
      }
      
      protected function §@o§() : void
      {
         this.§ !#§(§@M§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§6C§ = -1;
         this.§@o§();
         this.§-!>§ = this.§>s§ = this.§!!D§ = param1;
         this.§+"§ = this.§'!>§ = this.§2R§ = param2;
         this.§[V§ = 0;
         this.§7]§.x = this.§1Z§;
         this.§7]§.y = this.§[!=§;
         this.§7]§.scale = §;!,§;
         this.§5-§ = §;!,§;
         if(Math.abs(this.§2>§.x - this.§3!@§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§1Z§ - this.§3!@§.x) / (this.§2>§.x - this.§3!@§.x) * §`c§;
         }
         this.mDragging = true;
      }
      
      public function §^!>§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§[V§ += param1;
         var _loc3_:Number = this.§-!>§ - this.§>s§;
         if(this.§6!5§ > 0)
         {
            _loc2_ -= _loc3_ * §#;§.§`!2§ / §+K§ / this.§6!5§ * §`c§;
            this.§-p§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§-p§ = true;
            }
            if(_loc2_ > §`c§)
            {
               _loc2_ += (§`c§ - _loc2_) * 0.3;
               this.§-p§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§>s§ = this.§-!>§;
      }
      
      protected function §`q§() : Boolean
      {
         return this.mCurrentAction == §@M§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§-!>§ = param1;
            this.§+"§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §@M§)
         {
            this.§ !#§(§0!>§);
            if(param1 > 0)
            {
               this.§-!>§ = param1;
            }
            _loc3_ = Math.abs(this.§-!>§ - this.§!!D§);
            if(this.§[V§ < §0`§ && _loc3_ >= §>!=§ && _loc3_ >= §>9§ * this.§[V§ / 1000)
            {
               if(this.§-!>§ < this.§!!D§)
               {
                  this.§ !#§(§7c§);
               }
               else
               {
                  this.§ !#§(§4J§);
               }
               this.§&!5§ = _loc3_ / this.§[V§ * 10;
               this.§-p§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§-p§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §`c§)
               {
                  this.§-p§ = true;
               }
            }
            else if(this.§[V§ < §@!&§)
            {
               this.§>!0§();
               this.§&!5§ = §`c§ / (§`c§ / 500);
               this.§-p§ = true;
            }
            else
            {
               this.§^!>§(0);
               this.§?! §(0);
               this.§&!5§ = §`c§ / (§`c§ / 500);
               this.§-p§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §>!0§() : void
      {
         if(this.mCurrentAction == §7c§)
         {
            this.§ !#§(§4J§);
         }
         else if(this.mCurrentAction == §4J§)
         {
            this.§ !#§(§7c§);
         }
         else if(this.mCurrentCameraSliderLocation >= §`c§ / 2)
         {
            this.§ !#§(§4J§);
         }
         else if(this.mCurrentCameraSliderLocation <= §`c§ / 2)
         {
            this.§ !#§(§7c§);
         }
      }
      
      public function §?! §(param1:int) : void
      {
         this.§6C§ = param1;
         if(this.mCurrentCameraSliderLocation < §`c§ / 2)
         {
            this.§ !#§(§4J§);
         }
         else
         {
            this.§ !#§(§7c§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§ !#§(§4J§);
      }
      
      public function goToCastleView() : void
      {
         this.§ !#§(§7c§);
      }
      
      public function § !#§(param1:int) : void
      {
         this.§7]§.x = this.§1Z§;
         this.§7]§.y = this.§[!=§;
         this.§7]§.scale = §;!,§;
         this.§5-§ = §;!,§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §`c§)
         {
            return true;
         }
         if(this.mCurrentAction == §7c§)
         {
            return true;
         }
         return false;
      }
      
      public function §8!6§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §4J§)
         {
            return true;
         }
         return false;
      }
      
      public function §3F§(param1:§3y§) : void
      {
         this.§#!E§ = param1;
         if(this.§#!E§ != null)
         {
            this.§&=§ = new §3y§();
            this.§&=§.x = this.§1Z§;
            this.§&=§.y = this.§[!=§;
            this.§&=§.scale = §;!,§;
         }
         else
         {
            this.§1Z§ = this.§&=§.x;
            this.§[!=§ = this.§&=§.y;
            §;!,§ = this.§&=§.scale;
            this.§&=§ = null;
         }
      }
      
      protected function §`!,§() : void
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
         var _loc3_:Number = this.§-W§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§3Z§,Math.min(this.§>!<§,_loc3_));
         if(_loc3_ != this.§-W§)
         {
            this.§-W§ = _loc3_;
            this.§`!,§();
         }
      }
      
      public function §#!,§() : Number
      {
         return (this.§6!9§ - this.§3Z§) / (this.§>!<§ - this.§3Z§);
      }
      
      public function §8!0§(param1:Number) : void
      {
         this.§6!9§ = Math.min(Math.max(param1,0),1) * (this.§>!<§ - this.§3Z§) + this.§3Z§;
      }
      
      public function §1!&§() : void
      {
         this.§-W§ = Math.max(this.§-W§ - 0.5,0.5);
      }
      
      public function §<>§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§-W§;
         _loc1_ += " mXcenterB2: " + this.§1Z§;
         _loc1_ += " mYcenterB2: " + this.§[!=§;
         _loc1_ += " mXcenterB2target: " + this.§-W§;
         _loc1_ += "\n mYcenterB2target: " + this.§-W§;
         _loc1_ += " mXcenterB2previous: " + this.§-W§;
         _loc1_ += " mYcenterB2previous: " + this.§-W§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§-W§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§-W§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§-W§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§-W§;
         _loc1_ += " mTargetScale: " + this.§-W§;
         _loc1_ += " mTargetScalePrevious: " + this.§-W§;
         _loc1_ += " mCastleCameraX: " + this.§-W§;
         _loc1_ += "\n mCastleCameraY: " + this.§-W§;
         _loc1_ += " mCastleCameraScale: " + this.§-W§;
         _loc1_ += " mBirdCameraX: " + this.§-W§;
         _loc1_ += " mBirdCameraY: " + this.§-W§;
         _loc1_ += " mBirdCameraScale: " + this.§-W§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§-W§;
         _loc1_ += " mScreenTopScroll: " + this.§-W§;
         _loc1_ += " mDragging: " + this.§-W§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§-W§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§-W§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§-W§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§-W§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§-W§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§-W§;
         _loc1_ += " mDraggingTimer: " + this.§-W§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§-W§;
         _loc1_ += " mCameraBorderRight: " + this.§-W§;
         _loc1_ += " mCameraBorderSky: " + this.§-W§;
         _loc1_ += " mCameraBorderGround: " + this.§-W§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§-W§ + "\n ");
      }
   }
}
