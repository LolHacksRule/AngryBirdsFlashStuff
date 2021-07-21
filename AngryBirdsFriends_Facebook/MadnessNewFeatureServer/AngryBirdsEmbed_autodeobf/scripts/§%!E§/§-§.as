package §%!E§
{
   import §'6§.§?!L§;
   import §>!O§.§[+§;
   import §?!8§.§]f§;
   import §?j§.§9?§;
   import §?j§.§`y§;
   import §`!4§.§6l§;
   import §`!4§.§[O§;
   
   public class §-§
   {
      
      public static const §8!3§:Number = 1.25;
      
      public static const §#X§:Number = 0.15;
      
      public static const §&t§:Number = §[+§.§'q§ * §6l§.§%!<§;
      
      public static const §8F§:Number = §[+§.§0!-§ * §6l§.§%!<§;
      
      public static const §`!"§:Number = 0.1;
      
      public static const §]3§:int = 1500;
      
      public static const §^p§:int = 10;
      
      public static const §]l§:int = 15;
      
      public static const §`[§:int = 300;
      
      public static const §;>§:int = 1000;
      
      public static const §+r§:int = 10000;
      
      public static const §]!O§:int = §+r§ / 50;
      
      public static const §1!=§:int = 0;
      
      public static const §9!6§:int = 1;
      
      public static const §4!G§:int = 2;
      
      public static const §#7§:int = 3;
      
      public static const §=f§:int = 4;
      
      public static const §&4§:int = 5;
      
      public static const §^Q§:String = "CASTLE";
      
      public static const §1y§:String = "SLINGSHOT";
      
      protected static var § z§:Number;
      
      public static var §#w§:Number;
      
      public static var §-!I§:Number;
      
      public static const §+&§:Number = 2000;
       
      
      private var §75§:Number = 1.0;
      
      private var §[!'§:Number = 0.2;
      
      protected var §<]§:Number;
      
      protected var §,!M§:Number;
      
      protected var §^!7§:Number;
      
      public var §#J§:§6l§;
      
      public var §[!-§:Number;
      
      public var §8!,§:Number;
      
      protected var §"l§:§#!C§;
      
      protected var §[2§:§#!C§;
      
      public var §7d§:Number;
      
      public var §5$§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §5I§:Number;
      
      public var §8'§:Number;
      
      public var §,!4§:Number;
      
      public var §-!"§:Number;
      
      private var §87§:Number;
      
      private var §%=§:§1d§;
      
      private var §5V§:§1d§;
      
      protected var §3_§:Number = 0;
      
      protected var §?>§:Number = 0;
      
      protected var §2l§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var § do§:Number = 0;
      
      public var §^!;§:Boolean = true;
      
      public var §0?§:Number = 0;
      
      public var §,!3§:Number = 0;
      
      public var §?R§:Number = 0;
      
      public var §[B§:Number = 0;
      
      public var §%W§:Number = 0;
      
      public var §6!&§:Number = 0;
      
      public var §6!K§:Number = 0;
      
      public var §2,§:Number = 0;
      
      public var §"f§:Number = 0;
      
      private var §3k§:§1d§;
      
      public var §5h§:Number = 0;
      
      private var §?Z§:Number = 0;
      
      private var § "§:Number = 0;
      
      private var §8]§:§`y§ = null;
      
      private var §%+§:§`y§ = null;
      
      public function §-§(param1:§6l§, param2:§9?§, param3:Number = 1.0)
      {
         this.§3k§ = new §1d§(0,0,1,false);
         super();
         this.§,!M§ = 0;
         this.§^!7§ = 0;
         this.§#J§ = param1;
         §-§.§ z§ = 1;
         this.§75§ = Math.max(1,Math.min(2,param3));
         this.§<]§ = this.§75§;
         this.§5?§(param2);
         if(this.§"l§ && this.§[2§)
         {
            this.§5W§();
            this.§3_§ = this.§"l§.x - this.§[2§.x;
            this.§?>§ = this.§"l§.y - this.§[2§.y;
            this.§2l§ = this.§"l§.scale - this.§[2§.scale;
            this.§,!M§ = this.§"l§.x;
            this.§^!7§ = this.§"l§.y;
            § z§ = this.§"l§.scale * this.§<]§;
         }
         this.mCurrentCameraSliderLocation = §+r§;
         this.§^!;§ = true;
         this.§ do§ = §+r§ / 500;
      }
      
      private static function §=R§() : Number
      {
         var _loc1_:Number = §[+§.§;!7§ / §[+§.§!M§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §1A§() : Number
      {
         return § z§ * §=R§();
      }
      
      public function get §3,§() : Number
      {
         return this.§<]§;
      }
      
      public function set §3,§(param1:Number) : void
      {
         this.§<]§ = param1;
      }
      
      public function get §%#§() : Number
      {
         return this.§87§;
      }
      
      public function §?+§() : Number
      {
         return §&t§ / (this.§8'§ - this.§5I§);
      }
      
      public function get §8U§() : Number
      {
         return this.§75§;
      }
      
      public function get §4G§() : Number
      {
         return this.§[!'§;
      }
      
      public function §;`§(param1:Number) : void
      {
         this.§<]§ = param1;
         this.§+!<§();
         this.§<!D§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §&4§)
         {
            return;
         }
         this.goToCastleView();
         this.§0?§ = 2000;
         this.§^i§();
         this.§7!O§();
         this.§<'§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§,!M§ = this.§[2§.x;
         this.§^!7§ = this.§[2§.y;
         this.§^!;§ = false;
         this.§ do§ = §+r§ / 160000 * param1;
         this.§[b§(§&4§);
      }
      
      public function §5W§() : void
      {
         this.§5I§ = this.§[2§.x - §&t§ / this.§[2§.scale / 2;
         this.§8'§ = this.§"l§.x + §&t§ / this.§"l§.scale / 2;
         this.§,!4§ = this.§#J§.§;f§.§%!1§ - 20 * §6l§.§`>§ * §6l§.§%!<§;
         this.§-!"§ = this.§#J§.§;f§.§%!1§ + 4;
         var _loc1_:Number = §&t§ / (this.§8'§ - this.§5I§);
         this.§87§ = this.§-!"§ - §8F§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§#J§ = null;
      }
      
      public function §5?§(param1:§9?§) : void
      {
         var _loc3_:§`y§ = null;
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
         while(_loc2_ < param1.§3!E§)
         {
            _loc3_ = param1.§!X§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§'!%§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §8F§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = Number(§&t§ / (_loc6_ - _loc5_))) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §1y§)
            {
               this.§[2§ = new §#!C§(_loc9_,_loc10_,_loc13_,true);
               this.§5V§ = new §1d§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §^Q§)
            {
               this.§"l§ = new §#!C§(_loc9_,_loc10_,_loc13_,false);
               this.§%=§ = new §1d§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §?!L§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §-!D§(param1:§9?§) : void
      {
         var _loc2_:§`y§ = new §`y§();
         _loc2_.id = §1y§;
         _loc2_.x = this.§[2§.x;
         _loc2_.y = this.§[2§.y;
         var _loc3_:Number = §&t§ / this.§[2§.scale / 2;
         var _loc4_:Number = §8F§ / this.§[2§.scale / 2;
         _loc2_.left = this.§[2§.x - _loc3_;
         _loc2_.right = this.§[2§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §8F§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §&t§ / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§`y§;
         (_loc7_ = new §`y§()).id = §^Q§;
         _loc7_.x = this.§"l§.x;
         _loc7_.y = this.§"l§.y;
         var _loc8_:Number = §&t§ / this.§"l§.scale / 2;
         var _loc9_:Number = §8F§ / this.§"l§.scale / 2;
         _loc7_.left = this.§"l§.x - _loc8_;
         _loc7_.right = this.§"l§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §8F§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §&t§ / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§?]§();
         param1.§?"§(_loc2_);
         param1.§?"§(_loc7_);
      }
      
      public function §'!%§(param1:§`y§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §[+§.§'q§ * 0.5 / _loc2_ * §6l§.§%!<§;
         var _loc4_:Number = param1.y - §[+§.§0!-§ * 0.5 / _loc2_ * §6l§.§%!<§;
         var _loc5_:Number = _loc3_ + §[+§.§'q§ / _loc2_ * §6l§.§%!<§;
         var _loc6_:Number = _loc4_ + §[+§.§0!-§ / _loc2_ * §6l§.§%!<§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §8J§(param1:§#!C§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§ do§;
         if(_loc3_ >= §+r§)
         {
            _loc3_ = §+r§;
            this.§[b§(§1!=§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§[b§(§1!=§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §>!M§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§ do§;
         var _loc4_:Number = -§+r§ * 0.7;
         if(_loc2_ >= §+r§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §+r§;
            }
            this.§ do§ = -this.§ do§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §%I§(param1:Number) : void
      {
         if(this.mCurrentAction == §&4§)
         {
            this.§>!M§(param1);
         }
         else if(this.mCurrentAction == §9!6§)
         {
            this.§8J§(this.§"l§,param1);
         }
         else if(this.mCurrentAction == §4!G§)
         {
            this.§8J§(this.§[2§,-param1);
         }
         else if(this.mCurrentAction == §#7§)
         {
            this.§^!;§ = true;
         }
         else if(this.mCurrentAction == §=f§)
         {
            this.§3O§(param1);
         }
      }
      
      public function §;!"§(param1:Number) : void
      {
         if(this.§8]§)
         {
            this.§,!M§ = this.§8]§.x;
            this.§^!7§ = this.§8]§.y;
            § z§ = §&t§ / (this.§8]§.right - this.§8]§.left);
         }
         else
         {
            this.§+!<§();
            this.§%I§(param1);
            this.§[! §(this.mCurrentCameraSliderLocation,param1);
         }
         this.§^i§();
         this.§7!O§();
         this.§<'§();
      }
      
      private function §5m§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§5V§.scale + (this.§%=§.scale - this.§5V§.scale) * param1;
         var _loc4_:Number = this.§5V§.x + (this.§%=§.x - this.§5V§.x) * param1;
         var _loc5_:Number = this.§5V§.y + (this.§%=§.y - this.§5V§.y) * param1;
         this.§3k§.x -= (this.§3k§.x - _loc4_) * param2;
         this.§3k§.y -= (this.§3k§.y - _loc5_) * param2;
         this.§3k§.scale -= (this.§3k§.scale - _loc3_) * param2;
      }
      
      protected function §<!D§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§3_§ != 0)
         {
            if(!this.§^!;§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §+r§;
            this.§5m§(_loc3_,param2);
            this.§,!M§ = this.§3k§.x;
            this.§^!7§ = this.§3k§.y;
            § z§ = this.§3k§.scale;
         }
      }
      
      public function §[! §(param1:Number, param2:Number) : void
      {
         var _loc5_:§]f§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §+r§)
         {
            this.§^!;§ = true;
         }
         if(this.mCurrentAction == §#7§)
         {
            if(!this.§#J§.activeObject)
            {
               this.§[b§(§9!6§);
               this.§"f§ = §;>§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§#J§.activeObject).§<!9§().GetPosition().x + (!!_loc5_.§]!;§ ? _loc5_.§]!;§ * §6l§.§%!<§ : 0);
               _loc7_ = _loc5_.§<!9§().GetPosition().y + (!!_loc5_.§<!1§ ? _loc5_.§<!1§ * §6l§.§%!<§ : 0);
               if((_loc8_ = _loc5_.§<!9§().GetLinearVelocity().x) > 0 && this.§3_§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§3_§ * §+r§;
               }
               if(param1 >= §+r§)
               {
                  param1 = §+r§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §+r§;
               this.§5m§(_loc9_,_loc4_);
               _loc10_ = this.§3k§.x - §&t§ * 0.5 / this.§3k§.scale;
               _loc11_ = this.§3k§.y - §8F§ * 0.5 / this.§3k§.scale;
               _loc12_ = this.§3k§.x + §&t§ * 0.5 / this.§3k§.scale;
               _loc13_ = this.§3k§.y + §8F§ * 0.5 / this.§3k§.scale;
               _loc14_ = 150 * §6l§.§%!<§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§5I§,_loc15_);
               _loc17_ = Math.min(this.§8'§,_loc17_);
               _loc19_ = Math.abs(§&t§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§8F§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§3k§.scale)
               {
                  _loc21_ = this.§3k§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §&t§ * 0.5 / _loc21_ > this.§8'§)
               {
                  _loc15_ = (_loc17_ = this.§8'§) - §&t§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§5I§)
                  {
                     _loc15_ = this.§5I§;
                  }
               }
               if(_loc22_ - §&t§ * 0.5 / _loc21_ < this.§5I§)
               {
                  _loc17_ = (_loc15_ = this.§5I§) + §&t§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§8'§)
                  {
                     _loc17_ = this.§8'§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§&t§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §&t§ * 0.5 / _loc21_ < this.§,!4§)
               {
                  _loc23_ = this.§,!4§ + §&t§ * 0.5 / _loc21_;
               }
               this.§,!M§ -= (this.§,!M§ - _loc22_) * _loc4_;
               this.§5h§ -= (this.§5h§ - _loc21_) * _loc4_;
               § z§ = this.§5h§;
               this.§^!7§ -= (this.§^!7§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§8'§ || _loc6_ <= this.§5I§)
               {
                  this.§3k§.scale = § z§;
                  this.§3k§.x = this.§,!M§;
                  this.§3k§.y = this.§^!7§;
               }
            }
         }
         else
         {
            this.§<!D§(param1,_loc4_);
         }
      }
      
      public function §,l§(param1:Number, param2:Number) : void
      {
         this.§?Z§ = param1;
         this.§ "§ = param2;
      }
      
      private function §!!A§(param1:§1d§, param2:§#!C§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §#X§ + (param2.scale - §#X§) * this.§<]§ * §-§.§=R§();
         if(§&t§ / param1.scale > this.§8'§ - this.§5I§)
         {
            _loc3_ = §&t§ / (this.§8'§ - this.§5I§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §]M§(param1:§1d§, param2:§#!C§) : Boolean
      {
         var _loc3_:Boolean = this.§!!A§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §8F§ * 0.5 / param1.scale;
         var _loc5_:Number = §8F§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §&t§ * 0.5 / param1.scale) < this.§5I§ && param1.§`2§)
         {
            param1.x += this.§5I§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §&t§ * 0.5 / param1.scale) > this.§8'§ && !param1.§`2§)
         {
            param1.x += this.§8'§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §<o§(param1:§1d§, param2:§#!C§) : Number
      {
         return (param1.scale - §#X§) / (§-§.§=R§() * (param2.scale - §#X§));
      }
      
      protected function §+!<§() : void
      {
         this.§]M§(this.§5V§,this.§[2§);
         var _loc1_:Number = this.§<o§(this.§5V§,this.§[2§);
         this.§]M§(this.§%=§,this.§"l§);
         var _loc2_:Number = this.§<o§(this.§%=§,this.§"l§);
         this.§<]§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §^i§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§#J§.sprite)
         {
            _loc1_ = §[+§.§case§() / §[+§.§;!7§ - §[+§.§0!-§ >> 1;
            §#w§ = this.§#J§.sprite.x = §6l§.§!!M§ * ((1 - §-§.§1A§) / 2);
            §-!I§ = this.§#J§.sprite.y = _loc1_ + §6l§.§`>§ * (1 - §-§.§1A§) * §[O§.§-!@§;
         }
      }
      
      public function §<'§() : void
      {
         if(this.§#J§.sprite)
         {
            this.§#J§.sprite.scaleX = §1A§;
            this.§#J§.sprite.scaleY = §1A§;
         }
      }
      
      public function §7!O§() : void
      {
         var _loc1_:Number = this.§,!M§ / §6l§.§%!<§ + this.§?Z§;
         var _loc2_:Number = this.§^!7§ / §6l§.§%!<§ + this.§ "§;
         this.§7d§ = _loc1_ - §6l§.§!!M§ / 2 * §[+§.§;!7§ / §[+§.§0p§;
         this.§5$§ = _loc2_ - §6l§.§`>§ / 2 + §[O§.§>B§;
         if(this.§#J§.background)
         {
            this.§#J§.background.§!!9§(this.§7d§,this.§5$§);
         }
         if(this.§#J§.objects)
         {
            this.§#J§.objects.§!!9§(this.§7d§,this.§5$§);
         }
         if(this.§#J§.mLevelEngine)
         {
            this.§=H§();
         }
         if(this.§#J§.slingshot)
         {
            this.§#J§.slingshot.§!!9§(this.§7d§,this.§5$§);
         }
         if(this.§#J§.particles)
         {
            this.§#J§.particles.§!!9§(this.§7d§,this.§5$§);
         }
      }
      
      protected function §=H§() : void
      {
         this.§#J§.mLevelEngine.§!!9§(this.§7d§,this.§5$§,§ z§);
      }
      
      protected function §else§() : void
      {
         this.§[b§(§=f§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§"f§ = -1;
         this.§else§();
         this.§%W§ = this.§6!K§ = this.§?R§ = param1;
         this.§6!&§ = this.§2,§ = this.§[B§ = param2;
         this.§,!3§ = 0;
         this.§3k§.x = this.§,!M§;
         this.§3k§.y = this.§^!7§;
         this.§3k§.scale = § z§;
         this.§5h§ = § z§;
         if(Math.abs(this.§%=§.x - this.§5V§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§,!M§ - this.§5V§.x) / (this.§%=§.x - this.§5V§.x) * §+r§;
         }
         this.mDragging = true;
      }
      
      public function §3O§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§,!3§ += param1;
         var _loc3_:Number = this.§%W§ - this.§6!K§;
         if(this.§3_§ > 0)
         {
            _loc2_ -= _loc3_ * §6l§.§%!<§ / §1A§ / this.§3_§ * §+r§;
            this.§^!;§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§^!;§ = true;
            }
            if(_loc2_ > §+r§)
            {
               _loc2_ += (§+r§ - _loc2_) * 0.3;
               this.§^!;§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§6!K§ = this.§%W§;
      }
      
      protected function §9D§() : Boolean
      {
         return this.mCurrentAction == §=f§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§%W§ = param1;
            this.§6!&§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §=f§)
         {
            this.§[b§(§1!=§);
            if(param1 > 0)
            {
               this.§%W§ = param1;
            }
            _loc3_ = Math.abs(this.§%W§ - this.§?R§);
            if(this.§,!3§ < §]3§ && _loc3_ >= §^p§ && _loc3_ >= §]l§ * this.§,!3§ / 1000)
            {
               if(this.§%W§ < this.§?R§)
               {
                  this.§[b§(§9!6§);
               }
               else
               {
                  this.§[b§(§4!G§);
               }
               this.§ do§ = _loc3_ / this.§,!3§ * 10;
               this.§^!;§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§^!;§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §+r§)
               {
                  this.§^!;§ = true;
               }
            }
            else if(this.§,!3§ < §`[§)
            {
               this.§,m§();
               this.§ do§ = §+r§ / (§+r§ / 500);
               this.§^!;§ = true;
            }
            else
            {
               this.§3O§(0);
               this.§9!7§(0);
               this.§ do§ = §+r§ / (§+r§ / 500);
               this.§^!;§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §,m§() : void
      {
         if(this.mCurrentAction == §9!6§)
         {
            this.§[b§(§4!G§);
         }
         else if(this.mCurrentAction == §4!G§)
         {
            this.§[b§(§9!6§);
         }
         else if(this.mCurrentCameraSliderLocation >= §+r§ / 2)
         {
            this.§[b§(§4!G§);
         }
         else if(this.mCurrentCameraSliderLocation <= §+r§ / 2)
         {
            this.§[b§(§9!6§);
         }
      }
      
      public function §9!7§(param1:int) : void
      {
         this.§"f§ = param1;
         if(this.mCurrentCameraSliderLocation < §+r§ / 2)
         {
            this.§[b§(§4!G§);
         }
         else
         {
            this.§[b§(§9!6§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§[b§(§4!G§);
      }
      
      public function goToCastleView() : void
      {
         this.§[b§(§9!6§);
      }
      
      public function §[b§(param1:int) : void
      {
         this.§3k§.x = this.§,!M§;
         this.§3k§.y = this.§^!7§;
         this.§3k§.scale = § z§;
         this.§5h§ = § z§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §+r§)
         {
            return true;
         }
         if(this.mCurrentAction == §9!6§)
         {
            return true;
         }
         return false;
      }
      
      public function §%4§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §4!G§)
         {
            return true;
         }
         return false;
      }
      
      public function §?!E§(param1:§`y§) : void
      {
         this.§8]§ = param1;
         if(this.§8]§ != null)
         {
            this.§%+§ = new §`y§();
            this.§%+§.x = this.§,!M§;
            this.§%+§.y = this.§^!7§;
            this.§%+§.scale = § z§;
         }
         else
         {
            this.§,!M§ = this.§%+§.x;
            this.§^!7§ = this.§%+§.y;
            § z§ = this.§%+§.scale;
            this.§%+§ = null;
         }
      }
      
      protected function §<i§() : void
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
         var _loc3_:Number = this.§<]§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§4G§,Math.min(this.§8U§,_loc3_));
         if(_loc3_ != this.§<]§)
         {
            this.§<]§ = _loc3_;
            this.§<i§();
         }
      }
      
      public function §+z§() : Number
      {
         return (this.§3,§ - this.§4G§) / (this.§8U§ - this.§4G§);
      }
      
      public function §@!!§(param1:Number) : void
      {
         this.§3,§ = Math.min(Math.max(param1,0),1) * (this.§8U§ - this.§4G§) + this.§4G§;
      }
      
      public function §5"§() : void
      {
         this.§<]§ = Math.max(this.§<]§ - 0.5,0.5);
      }
      
      public function §;2§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§<]§;
         _loc1_ += " mXcenterB2: " + this.§,!M§;
         _loc1_ += " mYcenterB2: " + this.§^!7§;
         _loc1_ += " mXcenterB2target: " + this.§<]§;
         _loc1_ += "\n mYcenterB2target: " + this.§<]§;
         _loc1_ += " mXcenterB2previous: " + this.§<]§;
         _loc1_ += " mYcenterB2previous: " + this.§<]§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§<]§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§<]§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§<]§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§<]§;
         _loc1_ += " mTargetScale: " + this.§<]§;
         _loc1_ += " mTargetScalePrevious: " + this.§<]§;
         _loc1_ += " mCastleCameraX: " + this.§<]§;
         _loc1_ += "\n mCastleCameraY: " + this.§<]§;
         _loc1_ += " mCastleCameraScale: " + this.§<]§;
         _loc1_ += " mBirdCameraX: " + this.§<]§;
         _loc1_ += " mBirdCameraY: " + this.§<]§;
         _loc1_ += " mBirdCameraScale: " + this.§<]§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§<]§;
         _loc1_ += " mScreenTopScroll: " + this.§<]§;
         _loc1_ += " mDragging: " + this.§<]§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§<]§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§<]§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§<]§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§<]§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§<]§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§<]§;
         _loc1_ += " mDraggingTimer: " + this.§<]§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§<]§;
         _loc1_ += " mCameraBorderRight: " + this.§<]§;
         _loc1_ += " mCameraBorderSky: " + this.§<]§;
         _loc1_ += " mCameraBorderGround: " + this.§<]§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§<]§ + "\n ");
      }
      
      public function §#v§() : Number
      {
         return this.§,!M§;
      }
      
      public function §"!5§() : Number
      {
         return this.§^!7§;
      }
   }
}
