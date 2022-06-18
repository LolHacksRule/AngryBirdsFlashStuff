package §#!H§
{
   import § T§.§"!2§;
   import §7z§.§1K§;
   import §7z§.§]!-§;
   import §;!X§.§7`§;
   import §=q§.§+! §;
   import §=q§.§?X§;
   import §^!&§.§;C§;
   
   public class §7V§
   {
      
      public static const §@5§:Number = 1.25;
      
      public static const §#p§:Number = 0.15;
      
      public static const §^o§:Number = §7`§.§1=§ * §]!-§.§>C§;
      
      public static const §?d§:Number = §7`§.§@!#§ * §]!-§.§>C§;
      
      public static const §!!#§:Number = 0.1;
      
      public static const §=!5§:int = 1500;
      
      public static const §]-§:int = 10;
      
      public static const §#!^§:int = 15;
      
      public static const §'!2§:int = 300;
      
      public static const §0d§:int = 1000;
      
      public static const §2-§:int = 10000;
      
      public static const §%!4§:int = §2-§ / 50;
      
      public static const §'V§:int = 0;
      
      public static const §9z§:int = 1;
      
      public static const §9!L§:int = 2;
      
      public static const §6]§:int = 3;
      
      public static const §!e§:int = 4;
      
      public static const §^!N§:int = 5;
      
      public static const §0!#§:String = "CASTLE";
      
      public static const §8!F§:String = "SLINGSHOT";
      
      protected static var §@!,§:Number;
      
      public static var §?!0§:Number;
      
      public static var §^!I§:Number;
      
      public static const §,4§:Number = 2000;
       
      
      private var §&<§:Number = 1.0;
      
      private var §?6§:Number = 0.2;
      
      protected var §&!T§:Number;
      
      protected var §%d§:Number;
      
      protected var §[w§:Number;
      
      public var §^'§:§]!-§;
      
      public var §`L§:Number;
      
      public var §2b§:Number;
      
      private var §!!P§:§^!L§;
      
      private var §3o§:§^!L§;
      
      public var §+v§:Number;
      
      public var §?!Y§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §=S§:Number;
      
      public var §^&§:Number;
      
      public var §1e§:Number;
      
      public var §#!;§:Number;
      
      private var §?c§:Number;
      
      private var §[K§:§[&§;
      
      private var §%p§:§[&§;
      
      protected var §;!D§:Number = 0;
      
      protected var §1X§:Number = 0;
      
      protected var §[!!§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §=5§:Number = 0;
      
      public var §?!K§:Boolean = true;
      
      public var §5!;§:Number = 0;
      
      public var §1U§:Number = 0;
      
      public var §7!Y§:Number = 0;
      
      public var §%m§:Number = 0;
      
      public var §++§:Number = 0;
      
      public var §6z§:Number = 0;
      
      public var §+!D§:Number = 0;
      
      public var §6!8§:Number = 0;
      
      public var §]f§:Number = 0;
      
      private var §,!Z§:§[&§;
      
      public var §0!,§:Number = 0;
      
      private var §=!1§:Number = 0;
      
      private var §<A§:Number = 0;
      
      private var §@r§:§+! § = null;
      
      private var §9§:§+! § = null;
      
      public function §7V§(param1:§]!-§, param2:§?X§, param3:Number = 1.0)
      {
         this.§,!Z§ = new §[&§(0,0,1,false);
         super();
         this.§%d§ = 0;
         this.§[w§ = 0;
         this.§^'§ = param1;
         §7V§.§@!,§ = 1;
         this.§&<§ = Math.max(1,Math.min(2,param3));
         this.§&!T§ = this.§&<§;
         this.§9>§(param2);
         if(this.§!!P§ && this.§3o§)
         {
            this.§`a§();
            this.§;!D§ = this.§!!P§.x - this.§3o§.x;
            this.§1X§ = this.§!!P§.y - this.§3o§.y;
            this.§[!!§ = this.§!!P§.scale - this.§3o§.scale;
            this.§%d§ = this.§!!P§.x;
            this.§[w§ = this.§!!P§.y;
            §@!,§ = this.§!!P§.scale * this.§&!T§;
         }
         this.mCurrentCameraSliderLocation = §2-§;
         this.§?!K§ = true;
         this.§=5§ = §2-§ / 500;
      }
      
      private static function §2t§() : Number
      {
         var _loc1_:Number = §7`§.§%u§ / §7`§.§4h§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §+"§() : Number
      {
         return §@!,§ * §2t§();
      }
      
      public function get manualScale() : Number
      {
         return this.§&!T§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§&!T§ = param1;
      }
      
      public function get §5!1§() : Number
      {
         return this.§?c§;
      }
      
      public function § case§() : Number
      {
         return §^o§ / (this.§^&§ - this.§=S§);
      }
      
      public function get § -§() : Number
      {
         return this.§&<§;
      }
      
      public function get native() : Number
      {
         return this.§?6§;
      }
      
      public function §;q§(param1:Number) : void
      {
         this.§&!T§ = param1;
         this.§16§();
         this.§<!N§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §^!N§)
         {
            return;
         }
         this.goToCastleView();
         this.§5!;§ = 2000;
         this.§!5§();
         this.§=!Q§();
         this.§0!$§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§%d§ = this.§3o§.x;
         this.§[w§ = this.§3o§.y;
         this.§?!K§ = false;
         this.§=5§ = §2-§ / 160000 * param1;
         this.§3!G§(§^!N§);
      }
      
      public function §`a§() : void
      {
         this.§=S§ = this.§3o§.x - §^o§ / this.§3o§.scale / 2;
         this.§^&§ = this.§!!P§.x + §^o§ / this.§!!P§.scale / 2;
         this.§1e§ = this.§^'§.§7Y§.§-q§ - 20 * §]!-§.§6!%§ * §]!-§.§>C§;
         this.§#!;§ = this.§^'§.§7Y§.§-q§ + 4;
         var _loc1_:Number = §^o§ / (this.§^&§ - this.§=S§);
         this.§?c§ = this.§#!;§ - §?d§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§^'§ = null;
      }
      
      public function §9>§(param1:§?X§) : void
      {
         var _loc3_:§+! § = null;
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
         while(_loc2_ < param1.§9"§)
         {
            _loc3_ = param1.§@!U§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§8?§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §?d§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §^o§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §8!F§)
            {
               this.§3o§ = new §^!L§(_loc9_,_loc10_,_loc13_,true);
               this.§%p§ = new §[&§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §0!#§)
            {
               this.§!!P§ = new §^!L§(_loc9_,_loc10_,_loc13_,false);
               this.§[K§ = new §[&§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §;C§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §5!=§(param1:§?X§) : void
      {
         var _loc2_:§+! § = new §+! §();
         _loc2_.id = §8!F§;
         _loc2_.x = this.§3o§.x;
         _loc2_.y = this.§3o§.y;
         var _loc3_:Number = §^o§ / this.§3o§.scale / 2;
         var _loc4_:Number = §?d§ / this.§3o§.scale / 2;
         _loc2_.left = this.§3o§.x - _loc3_;
         _loc2_.right = this.§3o§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§+! §;
         (_loc5_ = new §+! §()).id = §0!#§;
         _loc5_.x = this.§!!P§.x;
         _loc5_.y = this.§!!P§.y;
         var _loc6_:Number = §^o§ / this.§!!P§.scale / 2;
         var _loc7_:Number = §?d§ / this.§!!P§.scale / 2;
         _loc5_.left = this.§!!P§.x - _loc6_;
         _loc5_.right = this.§!!P§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§4O§();
         param1.§9!Y§(_loc2_);
         param1.§9!Y§(_loc5_);
      }
      
      public function §8?§(param1:§+! §) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §7`§.§1=§ * 0.5 / _loc2_ * §]!-§.§>C§;
         var _loc4_:Number = param1.y - §7`§.§@!#§ * 0.5 / _loc2_ * §]!-§.§>C§;
         var _loc5_:Number = _loc3_ + §7`§.§1=§ / _loc2_ * §]!-§.§>C§;
         var _loc6_:Number = _loc4_ + §7`§.§@!#§ / _loc2_ * §]!-§.§>C§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function § !E§(param1:§^!L§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§=5§;
         if(_loc3_ >= §2-§)
         {
            _loc3_ = §2-§;
            this.§3!G§(§'V§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§3!G§(§'V§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §]!7§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§=5§;
         var _loc4_:Number = -§2-§ * 0.7;
         if(_loc2_ >= §2-§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §2-§;
            }
            this.§=5§ = -this.§=5§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §27§(param1:Number) : void
      {
         if(this.mCurrentAction == §^!N§)
         {
            this.§]!7§(param1);
         }
         else if(this.mCurrentAction == §9z§)
         {
            this.§ !E§(this.§!!P§,param1);
         }
         else if(this.mCurrentAction == §9!L§)
         {
            this.§ !E§(this.§3o§,-param1);
         }
         else if(this.mCurrentAction == §6]§)
         {
            this.§?!K§ = true;
         }
         else if(this.mCurrentAction == §!e§)
         {
            this.§#c§(param1);
         }
      }
      
      public function §'J§(param1:Number) : void
      {
         if(this.§@r§)
         {
            this.§%d§ = this.§@r§.x;
            this.§[w§ = this.§@r§.y;
            §@!,§ = §^o§ / (this.§@r§.right - this.§@r§.left);
         }
         else
         {
            this.§16§();
            this.§27§(param1);
            this.§0h§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§!5§();
         this.§=!Q§();
         this.§0!$§();
      }
      
      private function §<c§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%p§.scale + (this.§[K§.scale - this.§%p§.scale) * param1;
         var _loc4_:Number = this.§%p§.x + (this.§[K§.x - this.§%p§.x) * param1;
         var _loc5_:Number = this.§%p§.y + (this.§[K§.y - this.§%p§.y) * param1;
         this.§,!Z§.x -= (this.§,!Z§.x - _loc4_) * param2;
         this.§,!Z§.y -= (this.§,!Z§.y - _loc5_) * param2;
         this.§,!Z§.scale -= (this.§,!Z§.scale - _loc3_) * param2;
      }
      
      protected function §<!N§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§;!D§ != 0)
         {
            if(!this.§?!K§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §2-§;
            this.§<c§(_loc3_,param2);
            this.§%d§ = this.§,!Z§.x;
            this.§[w§ = this.§,!Z§.y;
            §@!,§ = this.§,!Z§.scale;
         }
      }
      
      public function §0h§(param1:Number, param2:Number) : void
      {
         var _loc5_:§"!2§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §2-§)
         {
            this.§?!K§ = true;
         }
         if(this.mCurrentAction == §6]§)
         {
            if(!this.§^'§.activeObject)
            {
               this.§3!G§(§9z§);
               this.§]f§ = §0d§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§^'§.activeObject).§][§().GetPosition().x + (!!_loc5_.§=C§ ? _loc5_.§=C§ * §]!-§.§>C§ : 0);
               _loc7_ = _loc5_.§][§().GetPosition().y + (!!_loc5_.§4!"§ ? _loc5_.§4!"§ * §]!-§.§>C§ : 0);
               if((_loc8_ = _loc5_.§][§().GetLinearVelocity().x) > 0 && this.§;!D§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§;!D§ * §2-§;
               }
               if(param1 >= §2-§)
               {
                  param1 = §2-§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §2-§;
               this.§<c§(_loc9_,_loc4_);
               _loc10_ = this.§,!Z§.x - §^o§ * 0.5 / this.§,!Z§.scale;
               _loc11_ = this.§,!Z§.y - §?d§ * 0.5 / this.§,!Z§.scale;
               _loc12_ = this.§,!Z§.x + §^o§ * 0.5 / this.§,!Z§.scale;
               _loc13_ = this.§,!Z§.y + §?d§ * 0.5 / this.§,!Z§.scale;
               _loc14_ = 150 * §]!-§.§>C§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§=S§,_loc15_);
               _loc17_ = Math.min(this.§^&§,_loc17_);
               _loc19_ = Math.abs(§^o§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§?d§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§,!Z§.scale)
               {
                  _loc21_ = this.§,!Z§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §^o§ * 0.5 / _loc21_ > this.§^&§)
               {
                  _loc15_ = (_loc17_ = this.§^&§) - §^o§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§=S§)
                  {
                     _loc15_ = this.§=S§;
                  }
               }
               if(_loc22_ - §^o§ * 0.5 / _loc21_ < this.§=S§)
               {
                  _loc17_ = (_loc15_ = this.§=S§) + §^o§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§^&§)
                  {
                     _loc17_ = this.§^&§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§^o§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §^o§ * 0.5 / _loc21_ < this.§1e§)
               {
                  _loc23_ = this.§1e§ + §^o§ * 0.5 / _loc21_;
               }
               this.§%d§ -= (this.§%d§ - _loc22_) * _loc4_;
               this.§0!,§ -= (this.§0!,§ - _loc21_) * _loc4_;
               §@!,§ = this.§0!,§;
               this.§[w§ -= (this.§[w§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§^&§ || _loc6_ <= this.§=S§)
               {
                  this.§,!Z§.scale = §@!,§;
                  this.§,!Z§.x = this.§%d§;
                  this.§,!Z§.y = this.§[w§;
               }
            }
         }
         else
         {
            this.§<!N§(param1,_loc4_);
         }
      }
      
      public function §9!'§(param1:Number, param2:Number) : void
      {
         this.§=!1§ = param1;
         this.§<A§ = param2;
      }
      
      private function §'!0§(param1:§[&§, param2:§^!L§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §#p§ + (param2.scale - §#p§) * this.§&!T§ * §7V§.§2t§();
         if(§^o§ / param1.scale > this.§^&§ - this.§=S§)
         {
            _loc3_ = §^o§ / (this.§^&§ - this.§=S§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §@!T§(param1:§[&§, param2:§^!L§) : Boolean
      {
         var _loc3_:Boolean = this.§'!0§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §?d§ * 0.5 / param1.scale;
         var _loc5_:Number = §?d§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §^o§ * 0.5 / param1.scale) < this.§=S§ && param1.§77§)
         {
            param1.x += this.§=S§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §^o§ * 0.5 / param1.scale) > this.§^&§ && !param1.§77§)
         {
            param1.x += this.§^&§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §'! §(param1:§[&§, param2:§^!L§) : Number
      {
         return (param1.scale - §#p§) / (§7V§.§2t§() * (param2.scale - §#p§));
      }
      
      protected function §16§() : void
      {
         this.§@!T§(this.§%p§,this.§3o§);
         var _loc1_:Number = this.§'! §(this.§%p§,this.§3o§);
         this.§@!T§(this.§[K§,this.§!!P§);
         var _loc2_:Number = this.§'! §(this.§[K§,this.§!!P§);
         this.§&!T§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §!5§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§^'§.sprite)
         {
            _loc1_ = §7`§.§ p§() / §7`§.§%u§ - §7`§.§@!#§ >> 1;
            §?!0§ = this.§^'§.sprite.x = §]!-§.§&!1§ * ((1 - §7V§.§+"§) / 2);
            §^!I§ = this.§^'§.sprite.y = _loc1_ + §]!-§.§6!%§ * (1 - §7V§.§+"§) * §1K§.§3!T§;
         }
      }
      
      public function §0!$§() : void
      {
         if(this.§^'§.sprite)
         {
            this.§^'§.sprite.scaleX = §+"§;
            this.§^'§.sprite.scaleY = §+"§;
         }
      }
      
      public function §=!Q§() : void
      {
         var _loc1_:Number = this.§%d§ / §]!-§.§>C§ + this.§=!1§;
         var _loc2_:Number = this.§[w§ / §]!-§.§>C§ + this.§<A§;
         this.§+v§ = _loc1_ - §]!-§.§&!1§ / 2 * §7`§.§%u§ / §7`§.§!q§;
         this.§?!Y§ = _loc2_ - §]!-§.§6!%§ / 2 + §1K§.§='§;
         if(this.§^'§.background)
         {
            this.§^'§.background.§4!B§(this.§+v§,this.§?!Y§);
         }
         if(this.§^'§.objects)
         {
            this.§^'§.objects.§4!B§(this.§+v§,this.§?!Y§);
         }
         if(this.§^'§.mLevelEngine)
         {
            this.§^'§.mLevelEngine.§4!B§(this.§+v§,this.§?!Y§,§+"§);
         }
         if(this.§^'§.slingshot)
         {
            this.§^'§.slingshot.§4!B§(this.§+v§,this.§?!Y§);
         }
         if(this.§^'§.particles)
         {
            this.§^'§.particles.§4!B§(this.§+v§,this.§?!Y§);
         }
      }
      
      protected function §]!E§() : void
      {
         this.§3!G§(§!e§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§]f§ = -1;
         this.§]!E§();
         this.§++§ = this.§+!D§ = this.§7!Y§ = param1;
         this.§6z§ = this.§6!8§ = this.§%m§ = param2;
         this.§1U§ = 0;
         this.§,!Z§.x = this.§%d§;
         this.§,!Z§.y = this.§[w§;
         this.§,!Z§.scale = §@!,§;
         this.§0!,§ = §@!,§;
         if(Math.abs(this.§[K§.x - this.§%p§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§%d§ - this.§%p§.x) / (this.§[K§.x - this.§%p§.x) * §2-§;
         }
         this.mDragging = true;
      }
      
      public function §#c§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§1U§ += param1;
         var _loc3_:Number = this.§++§ - this.§+!D§;
         if(this.§;!D§ > 0)
         {
            _loc2_ -= _loc3_ * §]!-§.§>C§ / §+"§ / this.§;!D§ * §2-§;
            this.§?!K§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§?!K§ = true;
            }
            if(_loc2_ > §2-§)
            {
               _loc2_ += (§2-§ - _loc2_) * 0.3;
               this.§?!K§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§+!D§ = this.§++§;
      }
      
      protected function § !5§() : Boolean
      {
         return this.mCurrentAction == §!e§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§++§ = param1;
            this.§6z§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §!e§)
         {
            this.§3!G§(§'V§);
            if(param1 > 0)
            {
               this.§++§ = param1;
            }
            _loc3_ = Math.abs(this.§++§ - this.§7!Y§);
            if(this.§1U§ < §=!5§ && _loc3_ >= §]-§ && _loc3_ >= §#!^§ * this.§1U§ / 1000)
            {
               if(this.§++§ < this.§7!Y§)
               {
                  this.§3!G§(§9z§);
               }
               else
               {
                  this.§3!G§(§9!L§);
               }
               this.§=5§ = _loc3_ / this.§1U§ * 10;
               this.§?!K§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§?!K§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §2-§)
               {
                  this.§?!K§ = true;
               }
            }
            else if(this.§1U§ < §'!2§)
            {
               this.§[R§();
               this.§=5§ = §2-§ / (§2-§ / 500);
               this.§?!K§ = true;
            }
            else
            {
               this.§#c§(0);
               this.§^K§(0);
               this.§=5§ = §2-§ / (§2-§ / 500);
               this.§?!K§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §[R§() : void
      {
         if(this.mCurrentAction == §9z§)
         {
            this.§3!G§(§9!L§);
         }
         else if(this.mCurrentAction == §9!L§)
         {
            this.§3!G§(§9z§);
         }
         else if(this.mCurrentCameraSliderLocation >= §2-§ / 2)
         {
            this.§3!G§(§9!L§);
         }
         else if(this.mCurrentCameraSliderLocation <= §2-§ / 2)
         {
            this.§3!G§(§9z§);
         }
      }
      
      public function §^K§(param1:int) : void
      {
         this.§]f§ = param1;
         if(this.mCurrentCameraSliderLocation < §2-§ / 2)
         {
            this.§3!G§(§9!L§);
         }
         else
         {
            this.§3!G§(§9z§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§3!G§(§9!L§);
      }
      
      public function goToCastleView() : void
      {
         this.§3!G§(§9z§);
      }
      
      public function §3!G§(param1:int) : void
      {
         this.§,!Z§.x = this.§%d§;
         this.§,!Z§.y = this.§[w§;
         this.§,!Z§.scale = §@!,§;
         this.§0!,§ = §@!,§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §2-§)
         {
            return true;
         }
         if(this.mCurrentAction == §9z§)
         {
            return true;
         }
         return false;
      }
      
      public function §[!D§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §9!L§)
         {
            return true;
         }
         return false;
      }
      
      public function §>!@§(param1:§+! §) : void
      {
         this.§@r§ = param1;
         if(this.§@r§ != null)
         {
            this.§9§ = new §+! §();
            this.§9§.x = this.§%d§;
            this.§9§.y = this.§[w§;
            this.§9§.scale = §@!,§;
         }
         else
         {
            this.§%d§ = this.§9§.x;
            this.§[w§ = this.§9§.y;
            §@!,§ = this.§9§.scale;
            this.§9§ = null;
         }
      }
      
      protected function §!_§() : void
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
         var _loc3_:Number = this.§&!T§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.native,Math.min(this.§ -§,_loc3_));
         if(_loc3_ != this.§&!T§)
         {
            this.§&!T§ = _loc3_;
            this.§!_§();
         }
      }
      
      public function §4g§() : Number
      {
         return (this.manualScale - this.native) / (this.§ -§ - this.native);
      }
      
      public function §4!!§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§ -§ - this.native) + this.native;
      }
      
      public function §%!V§() : void
      {
         this.§&!T§ = Math.max(this.§&!T§ - 0.5,0.5);
      }
      
      public function §2c§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§&!T§;
         _loc1_ += " mXcenterB2: " + this.§%d§;
         _loc1_ += " mYcenterB2: " + this.§[w§;
         _loc1_ += " mXcenterB2target: " + this.§&!T§;
         _loc1_ += "\n mYcenterB2target: " + this.§&!T§;
         _loc1_ += " mXcenterB2previous: " + this.§&!T§;
         _loc1_ += " mYcenterB2previous: " + this.§&!T§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§&!T§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§&!T§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§&!T§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§&!T§;
         _loc1_ += " mTargetScale: " + this.§&!T§;
         _loc1_ += " mTargetScalePrevious: " + this.§&!T§;
         _loc1_ += " mCastleCameraX: " + this.§&!T§;
         _loc1_ += "\n mCastleCameraY: " + this.§&!T§;
         _loc1_ += " mCastleCameraScale: " + this.§&!T§;
         _loc1_ += " mBirdCameraX: " + this.§&!T§;
         _loc1_ += " mBirdCameraY: " + this.§&!T§;
         _loc1_ += " mBirdCameraScale: " + this.§&!T§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§&!T§;
         _loc1_ += " mScreenTopScroll: " + this.§&!T§;
         _loc1_ += " mDragging: " + this.§&!T§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§&!T§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§&!T§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§&!T§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§&!T§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§&!T§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§&!T§;
         _loc1_ += " mDraggingTimer: " + this.§&!T§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§&!T§;
         _loc1_ += " mCameraBorderRight: " + this.§&!T§;
         _loc1_ += " mCameraBorderSky: " + this.§&!T§;
         _loc1_ += " mCameraBorderGround: " + this.§&!T§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§&!T§ + "\n ");
      }
   }
}
