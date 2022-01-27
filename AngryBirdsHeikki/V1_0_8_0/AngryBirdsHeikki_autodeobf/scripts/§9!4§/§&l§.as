package §9!4§
{
   import § !3§.§!X§;
   import §#!T§.§&2§;
   import §+!#§.§9!5§;
   import §0!&§.§!'§;
   import §0!&§.§3!O§;
   import §2z§.§2!U§;
   import §2z§.§6w§;
   
   public class §&l§
   {
      
      public static const §9!Z§:Number = 1.25;
      
      public static const §;X§:Number = 0.15;
      
      public static const §6O§:Number = §&2§.§8!G§ * §2!U§.§&%§;
      
      public static const §'I§:Number = §&2§.§>!?§ * §2!U§.§&%§;
      
      public static const §?!>§:Number = 0.1;
      
      public static const §,!'§:int = 1500;
      
      public static const §[r§:int = 10;
      
      public static const §;!]§:int = 15;
      
      public static const §++§:int = 300;
      
      public static const §4m§:int = 1000;
      
      public static const §=!'§:int = 10000;
      
      public static const §!!F§:int = §=!'§ / 50;
      
      public static const §@!+§:int = 0;
      
      public static const §6!9§:int = 1;
      
      public static const §&S§:int = 2;
      
      public static const § !B§:int = 3;
      
      public static const §"3§:int = 4;
      
      public static const §`i§:int = 5;
      
      public static const §,l§:String = "CASTLE";
      
      public static const §9@§:String = "SLINGSHOT";
      
      protected static var §;0§:Number;
      
      public static var §in §:Number;
      
      public static var §+!L§:Number;
      
      public static const §%'§:Number = 2000;
       
      
      private var § use§:Number = 1.0;
      
      private var §>!Z§:Number = 0.2;
      
      protected var §3!6§:Number;
      
      protected var §"!H§:Number;
      
      protected var §@!b§:Number;
      
      public var §7o§:§2!U§;
      
      public var §!A§:Number;
      
      public var §8y§:Number;
      
      private var §-V§:§`!G§;
      
      private var §-0§:§`!G§;
      
      public var §,u§:Number;
      
      public var §1!B§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §0!,§:Number;
      
      public var §+6§:Number;
      
      public var §'4§:Number;
      
      public var §!!3§:Number;
      
      private var §<O§:Number;
      
      private var §[v§:§[!'§;
      
      private var §4L§:§[!'§;
      
      protected var § !_§:Number = 0;
      
      protected var §!!D§:Number = 0;
      
      protected var §]!§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §]E§:Number = 0;
      
      public var §`%§:Boolean = true;
      
      public var §5!=§:Number = 0;
      
      public var §=!;§:Number = 0;
      
      public var §0W§:Number = 0;
      
      public var §"b§:Number = 0;
      
      public var §+<§:Number = 0;
      
      public var §+!;§:Number = 0;
      
      public var §;!G§:Number = 0;
      
      public var §,b§:Number = 0;
      
      public var §,!&§:Number = 0;
      
      private var §!@§:§[!'§;
      
      public var §>!4§:Number = 0;
      
      private var §,'§:Number = 0;
      
      private var §'!6§:Number = 0;
      
      private var §6[§:§3!O§ = null;
      
      private var §-c§:§3!O§ = null;
      
      public function §&l§(param1:§2!U§, param2:§!'§, param3:Number = 1.0)
      {
         this.§!@§ = new §[!'§(0,0,1,false);
         super();
         this.§"!H§ = 0;
         this.§@!b§ = 0;
         this.§7o§ = param1;
         §&l§.§;0§ = 1;
         this.§ use§ = Math.max(1,Math.min(2,param3));
         this.§3!6§ = this.§ use§;
         this.§8!L§(param2);
         if(this.§-V§ && this.§-0§)
         {
            this.§6R§();
            this.§ !_§ = this.§-V§.x - this.§-0§.x;
            this.§!!D§ = this.§-V§.y - this.§-0§.y;
            this.§]!§ = this.§-V§.scale - this.§-0§.scale;
            this.§"!H§ = this.§-V§.x;
            this.§@!b§ = this.§-V§.y;
            §;0§ = this.§-V§.scale * this.§3!6§;
         }
         this.mCurrentCameraSliderLocation = §=!'§;
         this.§`%§ = true;
         this.§]E§ = §=!'§ / 500;
      }
      
      private static function §2!#§() : Number
      {
         var _loc1_:Number = §&2§.§]!`§ / §&2§.§ `§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §3H§() : Number
      {
         return §;0§ * §2!#§();
      }
      
      public function get manualScale() : Number
      {
         return this.§3!6§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§3!6§ = param1;
      }
      
      public function get §'!e§() : Number
      {
         return this.§<O§;
      }
      
      public function §'h§() : Number
      {
         return §6O§ / (this.§+6§ - this.§0!,§);
      }
      
      public function get §9!1§() : Number
      {
         return this.§ use§;
      }
      
      public function get §^!<§() : Number
      {
         return this.§>!Z§;
      }
      
      public function §<!<§(param1:Number) : void
      {
         this.§3!6§ = param1;
         this.§8t§();
         this.§!h§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §`i§)
         {
            return;
         }
         this.goToCastleView();
         this.§5!=§ = 2000;
         this.§1!W§();
         this.§94§();
         this.§+!C§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§"!H§ = this.§-0§.x;
         this.§@!b§ = this.§-0§.y;
         this.§`%§ = false;
         this.§]E§ = §=!'§ / 160000 * param1;
         this.§;a§(§`i§);
      }
      
      public function §6R§() : void
      {
         this.§0!,§ = this.§-0§.x - §6O§ / this.§-0§.scale / 2;
         this.§+6§ = this.§-V§.x + §6O§ / this.§-V§.scale / 2;
         this.§'4§ = this.§7o§.§@!a§.§<k§ - 20 * §2!U§.§1^§ * §2!U§.§&%§;
         this.§!!3§ = this.§7o§.§@!a§.§<k§ + 4;
         var _loc1_:Number = §6O§ / (this.§+6§ - this.§0!,§);
         this.§<O§ = this.§!!3§ - §'I§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§7o§ = null;
      }
      
      public function §8!L§(param1:§!'§) : void
      {
         var _loc3_:§3!O§ = null;
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
         while(_loc2_ < param1.§+!7§)
         {
            _loc3_ = param1.§[A§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§,D§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §'I§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §6O§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §9@§)
            {
               this.§-0§ = new §`!G§(_loc9_,_loc10_,_loc13_,true);
               this.§4L§ = new §[!'§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §,l§)
            {
               this.§-V§ = new §`!G§(_loc9_,_loc10_,_loc13_,false);
               this.§[v§ = new §[!'§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §!X§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §+o§(param1:§!'§) : void
      {
         var _loc2_:§3!O§ = new §3!O§();
         _loc2_.id = §9@§;
         _loc2_.x = this.§-0§.x;
         _loc2_.y = this.§-0§.y;
         var _loc3_:Number = §6O§ / this.§-0§.scale / 2;
         var _loc4_:Number = §'I§ / this.§-0§.scale / 2;
         _loc2_.left = this.§-0§.x - _loc3_;
         _loc2_.right = this.§-0§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§3!O§;
         (_loc5_ = new §3!O§()).id = §,l§;
         _loc5_.x = this.§-V§.x;
         _loc5_.y = this.§-V§.y;
         var _loc6_:Number = §6O§ / this.§-V§.scale / 2;
         var _loc7_:Number = §'I§ / this.§-V§.scale / 2;
         _loc5_.left = this.§-V§.x - _loc6_;
         _loc5_.right = this.§-V§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§;!"§();
         param1.§=g§(_loc2_);
         param1.§=g§(_loc5_);
      }
      
      public function §,D§(param1:§3!O§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §&2§.§8!G§ * 0.5 / _loc2_ * §2!U§.§&%§;
         var _loc4_:Number = param1.y - §&2§.§>!?§ * 0.5 / _loc2_ * §2!U§.§&%§;
         var _loc5_:Number = _loc3_ + §&2§.§8!G§ / _loc2_ * §2!U§.§&%§;
         var _loc6_:Number = _loc4_ + §&2§.§>!?§ / _loc2_ * §2!U§.§&%§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §6j§(param1:§`!G§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§]E§;
         if(_loc3_ >= §=!'§)
         {
            _loc3_ = §=!'§;
            this.§;a§(§@!+§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§;a§(§@!+§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §9!H§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§]E§;
         var _loc4_:Number = -§=!'§ * 0.7;
         if(_loc2_ >= §=!'§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §=!'§;
            }
            this.§]E§ = -this.§]E§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §6!E§(param1:Number) : void
      {
         if(this.mCurrentAction == §`i§)
         {
            this.§9!H§(param1);
         }
         else if(this.mCurrentAction == §6!9§)
         {
            this.§6j§(this.§-V§,param1);
         }
         else if(this.mCurrentAction == §&S§)
         {
            this.§6j§(this.§-0§,-param1);
         }
         else if(this.mCurrentAction == § !B§)
         {
            this.§`%§ = true;
         }
         else if(this.mCurrentAction == §"3§)
         {
            this.§[O§(param1);
         }
      }
      
      public function §8i§(param1:Number) : void
      {
         if(this.§6[§)
         {
            this.§"!H§ = this.§6[§.x;
            this.§@!b§ = this.§6[§.y;
            §;0§ = §6O§ / (this.§6[§.right - this.§6[§.left);
         }
         else
         {
            this.§8t§();
            this.§6!E§(param1);
            this.§7p§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§1!W§();
         this.§94§();
         this.§+!C§();
      }
      
      private function §"!#§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§4L§.scale + (this.§[v§.scale - this.§4L§.scale) * param1;
         var _loc4_:Number = this.§4L§.x + (this.§[v§.x - this.§4L§.x) * param1;
         var _loc5_:Number = this.§4L§.y + (this.§[v§.y - this.§4L§.y) * param1;
         this.§!@§.x -= (this.§!@§.x - _loc4_) * param2;
         this.§!@§.y -= (this.§!@§.y - _loc5_) * param2;
         this.§!@§.scale -= (this.§!@§.scale - _loc3_) * param2;
      }
      
      protected function §!h§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§ !_§ != 0)
         {
            if(!this.§`%§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §=!'§;
            this.§"!#§(_loc3_,param2);
            this.§"!H§ = this.§!@§.x;
            this.§@!b§ = this.§!@§.y;
            §;0§ = this.§!@§.scale;
         }
      }
      
      public function §7p§(param1:Number, param2:Number) : void
      {
         var _loc5_:§9!5§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §=!'§)
         {
            this.§`%§ = true;
         }
         if(this.mCurrentAction == § !B§)
         {
            if(!this.§7o§.activeObject)
            {
               this.§;a§(§6!9§);
               this.§,!&§ = §4m§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§7o§.activeObject).§[!H§().GetPosition().x + (!!_loc5_.§#s§ ? _loc5_.§#s§ * §2!U§.§&%§ : 0);
               _loc7_ = _loc5_.§[!H§().GetPosition().y + (!!_loc5_.§0C§ ? _loc5_.§0C§ * §2!U§.§&%§ : 0);
               if((_loc8_ = _loc5_.§[!H§().GetLinearVelocity().x) > 0 && this.§ !_§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§ !_§ * §=!'§;
               }
               if(param1 >= §=!'§)
               {
                  param1 = §=!'§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §=!'§;
               this.§"!#§(_loc9_,_loc4_);
               _loc10_ = this.§!@§.x - §6O§ * 0.5 / this.§!@§.scale;
               _loc11_ = this.§!@§.y - §'I§ * 0.5 / this.§!@§.scale;
               _loc12_ = this.§!@§.x + §6O§ * 0.5 / this.§!@§.scale;
               _loc13_ = this.§!@§.y + §'I§ * 0.5 / this.§!@§.scale;
               _loc14_ = 150 * §2!U§.§&%§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§0!,§,_loc15_);
               _loc17_ = Math.min(this.§+6§,_loc17_);
               _loc19_ = Math.abs(§6O§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§'I§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§!@§.scale)
               {
                  _loc21_ = this.§!@§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §6O§ * 0.5 / _loc21_ > this.§+6§)
               {
                  _loc15_ = (_loc17_ = this.§+6§) - §6O§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§0!,§)
                  {
                     _loc15_ = this.§0!,§;
                  }
               }
               if(_loc22_ - §6O§ * 0.5 / _loc21_ < this.§0!,§)
               {
                  _loc17_ = (_loc15_ = this.§0!,§) + §6O§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§+6§)
                  {
                     _loc17_ = this.§+6§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§6O§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §6O§ * 0.5 / _loc21_ < this.§'4§)
               {
                  _loc23_ = this.§'4§ + §6O§ * 0.5 / _loc21_;
               }
               this.§"!H§ -= (this.§"!H§ - _loc22_) * _loc4_;
               this.§>!4§ -= (this.§>!4§ - _loc21_) * _loc4_;
               §;0§ = this.§>!4§;
               this.§@!b§ -= (this.§@!b§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§+6§ || _loc6_ <= this.§0!,§)
               {
                  this.§!@§.scale = §;0§;
                  this.§!@§.x = this.§"!H§;
                  this.§!@§.y = this.§@!b§;
               }
            }
         }
         else
         {
            this.§!h§(param1,_loc4_);
         }
      }
      
      public function §7&§(param1:Number, param2:Number) : void
      {
         this.§,'§ = param1;
         this.§'!6§ = param2;
      }
      
      private function §9=§(param1:§[!'§, param2:§`!G§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §;X§ + (param2.scale - §;X§) * this.§3!6§ * §&l§.§2!#§();
         if(§6O§ / param1.scale > this.§+6§ - this.§0!,§)
         {
            _loc3_ = §6O§ / (this.§+6§ - this.§0!,§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §4`§(param1:§[!'§, param2:§`!G§) : Boolean
      {
         var _loc3_:Boolean = this.§9=§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §'I§ * 0.5 / param1.scale;
         var _loc5_:Number = §'I§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §6O§ * 0.5 / param1.scale) < this.§0!,§ && param1.§3!4§)
         {
            param1.x += this.§0!,§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §6O§ * 0.5 / param1.scale) > this.§+6§ && !param1.§3!4§)
         {
            param1.x += this.§+6§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §%!b§(param1:§[!'§, param2:§`!G§) : Number
      {
         return (param1.scale - §;X§) / (§&l§.§2!#§() * (param2.scale - §;X§));
      }
      
      protected function §8t§() : void
      {
         this.§4`§(this.§4L§,this.§-0§);
         var _loc1_:Number = this.§%!b§(this.§4L§,this.§-0§);
         this.§4`§(this.§[v§,this.§-V§);
         var _loc2_:Number = this.§%!b§(this.§[v§,this.§-V§);
         this.§3!6§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §1!W§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§7o§.sprite)
         {
            _loc1_ = §&2§.§=! §() / §&2§.§]!`§ - §&2§.§>!?§ >> 1;
            §in § = this.§7o§.sprite.x = §2!U§.§2!M§ * ((1 - §&l§.§3H§) / 2);
            §+!L§ = this.§7o§.sprite.y = _loc1_ + §2!U§.§1^§ * (1 - §&l§.§3H§) * §6w§.§^!E§;
         }
      }
      
      public function §+!C§() : void
      {
         if(this.§7o§.sprite)
         {
            this.§7o§.sprite.scaleX = §3H§;
            this.§7o§.sprite.scaleY = §3H§;
         }
      }
      
      public function §94§() : void
      {
         var _loc1_:Number = this.§"!H§ / §2!U§.§&%§ + this.§,'§;
         var _loc2_:Number = this.§@!b§ / §2!U§.§&%§ + this.§'!6§;
         this.§,u§ = _loc1_ - §2!U§.§2!M§ / 2 * §&2§.§]!`§ / §&2§.§7k§;
         this.§1!B§ = _loc2_ - §2!U§.§1^§ / 2 + §6w§.§"8§;
         if(this.§7o§.background)
         {
            this.§7o§.background.§5r§(this.§,u§,this.§1!B§);
         }
         if(this.§7o§.objects)
         {
            this.§7o§.objects.§5r§(this.§,u§,this.§1!B§);
         }
         if(this.§7o§.mLevelEngine)
         {
            this.§7o§.mLevelEngine.§5r§(this.§,u§,this.§1!B§,§3H§);
         }
         if(this.§7o§.slingshot)
         {
            this.§7o§.slingshot.§5r§(this.§,u§,this.§1!B§);
         }
         if(this.§7o§.particles)
         {
            this.§7o§.particles.§5r§(this.§,u§,this.§1!B§);
         }
      }
      
      protected function §^!D§() : void
      {
         this.§;a§(§"3§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§,!&§ = -1;
         this.§^!D§();
         this.§+<§ = this.§;!G§ = this.§0W§ = param1;
         this.§+!;§ = this.§,b§ = this.§"b§ = param2;
         this.§=!;§ = 0;
         this.§!@§.x = this.§"!H§;
         this.§!@§.y = this.§@!b§;
         this.§!@§.scale = §;0§;
         this.§>!4§ = §;0§;
         if(Math.abs(this.§[v§.x - this.§4L§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§"!H§ - this.§4L§.x) / (this.§[v§.x - this.§4L§.x) * §=!'§;
         }
         this.mDragging = true;
      }
      
      public function §[O§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§=!;§ += param1;
         var _loc3_:Number = this.§+<§ - this.§;!G§;
         if(this.§ !_§ > 0)
         {
            _loc2_ -= _loc3_ * §2!U§.§&%§ / §3H§ / this.§ !_§ * §=!'§;
            this.§`%§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§`%§ = true;
            }
            if(_loc2_ > §=!'§)
            {
               _loc2_ += (§=!'§ - _loc2_) * 0.3;
               this.§`%§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§;!G§ = this.§+<§;
      }
      
      protected function §9-§() : Boolean
      {
         return this.mCurrentAction == §"3§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§+<§ = param1;
            this.§+!;§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §"3§)
         {
            this.§;a§(§@!+§);
            if(param1 > 0)
            {
               this.§+<§ = param1;
            }
            _loc3_ = Math.abs(this.§+<§ - this.§0W§);
            if(this.§=!;§ < §,!'§ && _loc3_ >= §[r§ && _loc3_ >= §;!]§ * this.§=!;§ / 1000)
            {
               if(this.§+<§ < this.§0W§)
               {
                  this.§;a§(§6!9§);
               }
               else
               {
                  this.§;a§(§&S§);
               }
               this.§]E§ = _loc3_ / this.§=!;§ * 10;
               this.§`%§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§`%§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §=!'§)
               {
                  this.§`%§ = true;
               }
            }
            else if(this.§=!;§ < §++§)
            {
               this.§>A§();
               this.§]E§ = §=!'§ / (§=!'§ / 500);
               this.§`%§ = true;
            }
            else
            {
               this.§[O§(0);
               this.§[z§(0);
               this.§]E§ = §=!'§ / (§=!'§ / 500);
               this.§`%§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §>A§() : void
      {
         if(this.mCurrentAction == §6!9§)
         {
            this.§;a§(§&S§);
         }
         else if(this.mCurrentAction == §&S§)
         {
            this.§;a§(§6!9§);
         }
         else if(this.mCurrentCameraSliderLocation >= §=!'§ / 2)
         {
            this.§;a§(§&S§);
         }
         else if(this.mCurrentCameraSliderLocation <= §=!'§ / 2)
         {
            this.§;a§(§6!9§);
         }
      }
      
      public function §[z§(param1:int) : void
      {
         this.§,!&§ = param1;
         if(this.mCurrentCameraSliderLocation < §=!'§ / 2)
         {
            this.§;a§(§&S§);
         }
         else
         {
            this.§;a§(§6!9§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§;a§(§&S§);
      }
      
      public function goToCastleView() : void
      {
         this.§;a§(§6!9§);
      }
      
      public function §;a§(param1:int) : void
      {
         this.§!@§.x = this.§"!H§;
         this.§!@§.y = this.§@!b§;
         this.§!@§.scale = §;0§;
         this.§>!4§ = §;0§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §=!'§)
         {
            return true;
         }
         if(this.mCurrentAction == §6!9§)
         {
            return true;
         }
         return false;
      }
      
      public function §1!?§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §&S§)
         {
            return true;
         }
         return false;
      }
      
      public function §8l§(param1:§3!O§) : void
      {
         this.§6[§ = param1;
         if(this.§6[§ != null)
         {
            this.§-c§ = new §3!O§();
            this.§-c§.x = this.§"!H§;
            this.§-c§.y = this.§@!b§;
            this.§-c§.scale = §;0§;
         }
         else
         {
            this.§"!H§ = this.§-c§.x;
            this.§@!b§ = this.§-c§.y;
            §;0§ = this.§-c§.scale;
            this.§-c§ = null;
         }
      }
      
      protected function §4x§() : void
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
         var _loc3_:Number = this.§3!6§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§^!<§,Math.min(this.§9!1§,_loc3_));
         if(_loc3_ != this.§3!6§)
         {
            this.§3!6§ = _loc3_;
            this.§4x§();
         }
      }
      
      public function §<!F§() : Number
      {
         return (this.manualScale - this.§^!<§) / (this.§9!1§ - this.§^!<§);
      }
      
      public function § A§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§9!1§ - this.§^!<§) + this.§^!<§;
      }
      
      public function §43§() : void
      {
         this.§3!6§ = Math.max(this.§3!6§ - 0.5,0.5);
      }
      
      public function §!!R§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§3!6§;
         _loc1_ += " mXcenterB2: " + this.§"!H§;
         _loc1_ += " mYcenterB2: " + this.§@!b§;
         _loc1_ += " mXcenterB2target: " + this.§3!6§;
         _loc1_ += "\n mYcenterB2target: " + this.§3!6§;
         _loc1_ += " mXcenterB2previous: " + this.§3!6§;
         _loc1_ += " mYcenterB2previous: " + this.§3!6§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§3!6§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§3!6§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§3!6§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§3!6§;
         _loc1_ += " mTargetScale: " + this.§3!6§;
         _loc1_ += " mTargetScalePrevious: " + this.§3!6§;
         _loc1_ += " mCastleCameraX: " + this.§3!6§;
         _loc1_ += "\n mCastleCameraY: " + this.§3!6§;
         _loc1_ += " mCastleCameraScale: " + this.§3!6§;
         _loc1_ += " mBirdCameraX: " + this.§3!6§;
         _loc1_ += " mBirdCameraY: " + this.§3!6§;
         _loc1_ += " mBirdCameraScale: " + this.§3!6§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§3!6§;
         _loc1_ += " mScreenTopScroll: " + this.§3!6§;
         _loc1_ += " mDragging: " + this.§3!6§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§3!6§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§3!6§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§3!6§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§3!6§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§3!6§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§3!6§;
         _loc1_ += " mDraggingTimer: " + this.§3!6§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§3!6§;
         _loc1_ += " mCameraBorderRight: " + this.§3!6§;
         _loc1_ += " mCameraBorderSky: " + this.§3!6§;
         _loc1_ += " mCameraBorderGround: " + this.§3!6§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§3!6§ + "\n ");
      }
   }
}
