package §[!A§
{
   import §!6§.§3!5§;
   import §"^§.§9=§;
   import §,!F§.§#§;
   import §,!F§.§`"§;
   import §3!%§.§#!K§;
   import §3!%§.§3P§;
   import §8x§.§8C§;
   
   public class §+!!§
   {
      
      public static const §@;§:Number = 1.25;
      
      public static const §9l§:Number = 0.15;
      
      public static const §;!K§:Number = §9=§.§^&§ * §#§.§67§;
      
      public static const §>"§:Number = §9=§.§"#§ * §#§.§67§;
      
      public static const §"!P§:Number = 0.1;
      
      public static const §0&§:int = 1500;
      
      public static const §&I§:int = 10;
      
      public static const §>%§:int = 15;
      
      public static const §,!3§:int = 300;
      
      public static const §`N§:int = 1000;
      
      public static const §5+§:int = 10000;
      
      public static const §8!,§:int = §5+§ / 50;
      
      public static const §%!-§:int = 0;
      
      public static const §7j§:int = 1;
      
      public static const §&2§:int = 2;
      
      public static const § !8§:int = 3;
      
      public static const §3z§:int = 4;
      
      public static const §[7§:int = 5;
      
      public static const §[y§:String = "CASTLE";
      
      public static const §;!#§:String = "SLINGSHOT";
      
      protected static var §,!P§:Number;
      
      public static var §!2§:Number;
      
      public static var §3!K§:Number;
      
      public static const §9Z§:Number = 2000;
       
      
      private var §0!!§:Number = 1.0;
      
      private var §3[§:Number = 0.2;
      
      protected var §--§:Number;
      
      protected var §0E§:Number;
      
      protected var §3<§:Number;
      
      public var §&§:§#§;
      
      public var §!&§:Number;
      
      public var §=!§:Number;
      
      private var §3!P§:§77§;
      
      private var §1l§:§77§;
      
      public var §`!!§:Number;
      
      public var §8h§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §;]§:Number;
      
      public var §%"§:Number;
      
      public var §"b§:Number;
      
      public var §>&§:Number;
      
      private var §,z§:Number;
      
      private var §!u§:§ n§;
      
      private var §,!K§:§ n§;
      
      protected var §+d§:Number = 0;
      
      protected var §9!1§:Number = 0;
      
      protected var §5e§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §,!G§:Number = 0;
      
      public var §!a§:Boolean = true;
      
      public var §+!O§:Number = 0;
      
      public var §@!D§:Number = 0;
      
      public var §54§:Number = 0;
      
      public var §1!;§:Number = 0;
      
      public var §#H§:Number = 0;
      
      public var §!Q§:Number = 0;
      
      public var §!7§:Number = 0;
      
      public var §<9§:Number = 0;
      
      public var §;! §:Number = 0;
      
      private var §,Z§:§ n§;
      
      public var §1!F§:Number = 0;
      
      private var §8!C§:Number = 0;
      
      private var §!>§:Number = 0;
      
      private var §^!;§:§3P§ = null;
      
      private var §<m§:§3P§ = null;
      
      public function §+!!§(param1:§#§, param2:§#!K§, param3:Number = 1.0)
      {
         this.§,Z§ = new § n§(0,0,1,false);
         super();
         this.§0E§ = 0;
         this.§3<§ = 0;
         this.§&§ = param1;
         §+!!§.§,!P§ = 1;
         this.§0!!§ = Math.max(1,Math.min(2,param3));
         this.§--§ = this.§0!!§;
         this.§2!9§(param2);
         if(this.§3!P§ && this.§1l§)
         {
            this.§"w§();
            this.§+d§ = this.§3!P§.x - this.§1l§.x;
            this.§9!1§ = this.§3!P§.y - this.§1l§.y;
            this.§5e§ = this.§3!P§.scale - this.§1l§.scale;
            this.§0E§ = this.§3!P§.x;
            this.§3<§ = this.§3!P§.y;
            §,!P§ = this.§3!P§.scale * this.§--§;
         }
         this.mCurrentCameraSliderLocation = §5+§;
         this.§!a§ = true;
         this.§,!G§ = §5+§ / 500;
      }
      
      private static function §^n§() : Number
      {
         var _loc1_:Number = §9=§.§'j§ / §9=§.§-m§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get levelScale() : Number
      {
         return §,!P§ * §^n§();
      }
      
      public function get §"o§() : Number
      {
         return this.§--§;
      }
      
      public function set §"o§(param1:Number) : void
      {
         this.§--§ = param1;
      }
      
      public function get §>!<§() : Number
      {
         return this.§,z§;
      }
      
      public function §8!K§() : Number
      {
         return §;!K§ / (this.§%"§ - this.§;]§);
      }
      
      public function get §>!G§() : Number
      {
         return this.§0!!§;
      }
      
      public function get §0!6§() : Number
      {
         return this.§3[§;
      }
      
      public function §,! §(param1:Number) : void
      {
         this.§--§ = param1;
         this.§]<§();
         this.§1R§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §[7§)
         {
            return;
         }
         this.goToCastleView();
         this.§+!O§ = 2000;
         this.adjustLevelMainViewAccordingToScale();
         this.§3U§();
         this.§0!3§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§0E§ = this.§1l§.x;
         this.§3<§ = this.§1l§.y;
         this.§!a§ = false;
         this.§,!G§ = §5+§ / 160000 * param1;
         this.§3!>§(§[7§);
      }
      
      public function §"w§() : void
      {
         this.§;]§ = this.§1l§.x - §;!K§ / this.§1l§.scale / 2;
         this.§%"§ = this.§3!P§.x + §;!K§ / this.§3!P§.scale / 2;
         this.§"b§ = this.§&§.§6!2§.§-u§ - 20 * §#§.§&!J§ * §#§.§67§;
         this.§>&§ = this.§&§.§6!2§.§-u§ + 4;
         var _loc1_:Number = §;!K§ / (this.§%"§ - this.§;]§);
         this.§,z§ = this.§>&§ - §>"§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§&§ = null;
      }
      
      public function §2!9§(param1:§#!K§) : void
      {
         var _loc3_:§3P§ = null;
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
         while(_loc2_ < param1.§0<§)
         {
            _loc3_ = param1.§4!9§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§]G§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §>"§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §;!K§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §;!#§)
            {
               this.§1l§ = new §77§(_loc9_,_loc10_,_loc13_,true);
               this.§,!K§ = new § n§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §[y§)
            {
               this.§3!P§ = new §77§(_loc9_,_loc10_,_loc13_,false);
               this.§!u§ = new § n§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §3!5§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §<`§(param1:§#!K§) : void
      {
         var _loc2_:§3P§ = new §3P§();
         _loc2_.id = §;!#§;
         _loc2_.x = this.§1l§.x;
         _loc2_.y = this.§1l§.y;
         var _loc3_:Number = §;!K§ / this.§1l§.scale / 2;
         var _loc4_:Number = §>"§ / this.§1l§.scale / 2;
         _loc2_.left = this.§1l§.x - _loc3_;
         _loc2_.right = this.§1l§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§3P§;
         (_loc5_ = new §3P§()).id = §[y§;
         _loc5_.x = this.§3!P§.x;
         _loc5_.y = this.§3!P§.y;
         var _loc6_:Number = §;!K§ / this.§3!P§.scale / 2;
         var _loc7_:Number = §>"§ / this.§3!P§.scale / 2;
         _loc5_.left = this.§3!P§.x - _loc6_;
         _loc5_.right = this.§3!P§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§+!&§();
         param1.§8c§(_loc2_);
         param1.§8c§(_loc5_);
      }
      
      public function §]G§(param1:§3P§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §9=§.§^&§ * 0.5 / _loc2_ * §#§.§67§;
         var _loc4_:Number = param1.y - §9=§.§"#§ * 0.5 / _loc2_ * §#§.§67§;
         var _loc5_:Number = _loc3_ + §9=§.§^&§ / _loc2_ * §#§.§67§;
         var _loc6_:Number = _loc4_ + §9=§.§"#§ / _loc2_ * §#§.§67§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §=D§(param1:§77§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§,!G§;
         if(_loc3_ >= §5+§)
         {
            _loc3_ = §5+§;
            this.§3!>§(§%!-§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§3!>§(§%!-§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function § 3§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§,!G§;
         var _loc4_:Number = -§5+§ * 0.7;
         if(_loc2_ >= §5+§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §5+§;
            }
            this.§,!G§ = -this.§,!G§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §!"§(param1:Number) : void
      {
         if(this.mCurrentAction == §[7§)
         {
            this.§ 3§(param1);
         }
         else if(this.mCurrentAction == §7j§)
         {
            this.§=D§(this.§3!P§,param1);
         }
         else if(this.mCurrentAction == §&2§)
         {
            this.§=D§(this.§1l§,-param1);
         }
         else if(this.mCurrentAction == § !8§)
         {
            this.§!a§ = true;
         }
         else if(this.mCurrentAction == §3z§)
         {
            this.§!i§(param1);
         }
      }
      
      public function §7q§(param1:Number) : void
      {
         if(this.§^!;§)
         {
            this.§0E§ = this.§^!;§.x;
            this.§3<§ = this.§^!;§.y;
            §,!P§ = §;!K§ / (this.§^!;§.right - this.§^!;§.left);
         }
         else
         {
            this.§]<§();
            this.§!"§(param1);
            this.§<!7§(this.mCurrentCameraSliderLocation,param1);
         }
         this.adjustLevelMainViewAccordingToScale();
         this.§3U§();
         this.§0!3§();
      }
      
      private function §<H§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§,!K§.scale + (this.§!u§.scale - this.§,!K§.scale) * param1;
         var _loc4_:Number = this.§,!K§.x + (this.§!u§.x - this.§,!K§.x) * param1;
         var _loc5_:Number = this.§,!K§.y + (this.§!u§.y - this.§,!K§.y) * param1;
         this.§,Z§.x -= (this.§,Z§.x - _loc4_) * param2;
         this.§,Z§.y -= (this.§,Z§.y - _loc5_) * param2;
         this.§,Z§.scale -= (this.§,Z§.scale - _loc3_) * param2;
      }
      
      protected function §1R§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§+d§ != 0)
         {
            if(!this.§!a§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §5+§;
            this.§<H§(_loc3_,param2);
            this.§0E§ = this.§,Z§.x;
            this.§3<§ = this.§,Z§.y;
            §,!P§ = this.§,Z§.scale;
         }
      }
      
      public function §<!7§(param1:Number, param2:Number) : void
      {
         var _loc5_:§8C§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §5+§)
         {
            this.§!a§ = true;
         }
         if(this.mCurrentAction == § !8§)
         {
            if(!this.§&§.activeObject)
            {
               this.§3!>§(§7j§);
               this.§;! § = §`N§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§&§.activeObject).§]!7§().GetPosition().x + (!!_loc5_.§%d§ ? _loc5_.§%d§ * §#§.§67§ : 0);
               _loc7_ = _loc5_.§]!7§().GetPosition().y + (!!_loc5_.§@!@§ ? _loc5_.§@!@§ * §#§.§67§ : 0);
               if((_loc8_ = _loc5_.§]!7§().GetLinearVelocity().x) > 0 && this.§+d§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§+d§ * §5+§;
               }
               if(param1 >= §5+§)
               {
                  param1 = §5+§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §5+§;
               this.§<H§(_loc9_,_loc4_);
               _loc10_ = this.§,Z§.x - §;!K§ * 0.5 / this.§,Z§.scale;
               _loc11_ = this.§,Z§.y - §>"§ * 0.5 / this.§,Z§.scale;
               _loc12_ = this.§,Z§.x + §;!K§ * 0.5 / this.§,Z§.scale;
               _loc13_ = this.§,Z§.y + §>"§ * 0.5 / this.§,Z§.scale;
               _loc14_ = 150 * §#§.§67§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§;]§,_loc15_);
               _loc17_ = Math.min(this.§%"§,_loc17_);
               _loc19_ = Math.abs(§;!K§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§>"§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§,Z§.scale)
               {
                  _loc21_ = this.§,Z§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §;!K§ * 0.5 / _loc21_ > this.§%"§)
               {
                  _loc15_ = (_loc17_ = this.§%"§) - §;!K§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§;]§)
                  {
                     _loc15_ = this.§;]§;
                  }
               }
               if(_loc22_ - §;!K§ * 0.5 / _loc21_ < this.§;]§)
               {
                  _loc17_ = (_loc15_ = this.§;]§) + §;!K§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§%"§)
                  {
                     _loc17_ = this.§%"§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§;!K§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §;!K§ * 0.5 / _loc21_ < this.§"b§)
               {
                  _loc23_ = this.§"b§ + §;!K§ * 0.5 / _loc21_;
               }
               this.§0E§ -= (this.§0E§ - _loc22_) * _loc4_;
               this.§1!F§ -= (this.§1!F§ - _loc21_) * _loc4_;
               §,!P§ = this.§1!F§;
               this.§3<§ -= (this.§3<§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§%"§ || _loc6_ <= this.§;]§)
               {
                  this.§,Z§.scale = §,!P§;
                  this.§,Z§.x = this.§0E§;
                  this.§,Z§.y = this.§3<§;
               }
            }
         }
         else
         {
            this.§1R§(param1,_loc4_);
         }
      }
      
      public function §<6§(param1:Number, param2:Number) : void
      {
         this.§8!C§ = param1;
         this.§!>§ = param2;
      }
      
      private function §&x§(param1:§ n§, param2:§77§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §9l§ + (param2.scale - §9l§) * this.§--§ * §+!!§.§^n§();
         if(§;!K§ / param1.scale > this.§%"§ - this.§;]§)
         {
            _loc3_ = §;!K§ / (this.§%"§ - this.§;]§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §3!M§(param1:§ n§, param2:§77§) : Boolean
      {
         var _loc3_:Boolean = this.§&x§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §>"§ * 0.5 / param1.scale;
         var _loc5_:Number = §>"§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §;!K§ * 0.5 / param1.scale) < this.§;]§ && param1.§%P§)
         {
            param1.x += this.§;]§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §;!K§ * 0.5 / param1.scale) > this.§%"§ && !param1.§%P§)
         {
            param1.x += this.§%"§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §2!4§(param1:§ n§, param2:§77§) : Number
      {
         return (param1.scale - §9l§) / (§+!!§.§^n§() * (param2.scale - §9l§));
      }
      
      protected function §]<§() : void
      {
         this.§3!M§(this.§,!K§,this.§1l§);
         var _loc1_:Number = this.§2!4§(this.§,!K§,this.§1l§);
         this.§3!M§(this.§!u§,this.§3!P§);
         var _loc2_:Number = this.§2!4§(this.§!u§,this.§3!P§);
         this.§--§ = Math.min(_loc1_,_loc2_);
      }
      
      public function adjustLevelMainViewAccordingToScale() : void
      {
         var _loc1_:Number = NaN;
         if(this.§&§.sprite)
         {
            _loc1_ = §9=§.§3c§() / §9=§.§'j§ - §9=§.§"#§ >> 1;
            §!2§ = this.§&§.sprite.x = §#§.§'!#§ * ((1 - §+!!§.levelScale) / 2);
            §3!K§ = this.§&§.sprite.y = _loc1_ + §#§.§&!J§ * (1 - §+!!§.levelScale) * §`"§.§ w§;
         }
      }
      
      public function §0!3§() : void
      {
         if(this.§&§.sprite)
         {
            this.§&§.sprite.scaleX = levelScale;
            this.§&§.sprite.scaleY = levelScale;
         }
      }
      
      public function §3U§() : void
      {
         var _loc1_:Number = this.§0E§ / §#§.§67§ + this.§8!C§;
         var _loc2_:Number = this.§3<§ / §#§.§67§ + this.§!>§;
         this.§`!!§ = _loc1_ - §#§.§'!#§ / 2 * §9=§.§'j§ / §9=§.§@&§;
         this.§8h§ = _loc2_ - §#§.§&!J§ / 2 + §`"§.§^!6§;
         if(this.§&§.background)
         {
            this.§&§.background.§3]§(this.§`!!§,this.§8h§);
         }
         if(this.§&§.objects)
         {
            this.§&§.objects.§3]§(this.§`!!§,this.§8h§);
         }
         if(this.§&§.§9!4§)
         {
            this.§&§.§9!4§.§3]§(this.§`!!§,this.§8h§,levelScale);
         }
         if(this.§&§.slingshot)
         {
            this.§&§.slingshot.§3]§(this.§`!!§,this.§8h§);
         }
         if(this.§&§.particles)
         {
            this.§&§.particles.§3]§(this.§`!!§,this.§8h§);
         }
      }
      
      protected function §=o§() : void
      {
         this.§3!>§(§3z§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§;! § = -1;
         this.§=o§();
         this.§#H§ = this.§!7§ = this.§54§ = param1;
         this.§!Q§ = this.§<9§ = this.§1!;§ = param2;
         this.§@!D§ = 0;
         this.§,Z§.x = this.§0E§;
         this.§,Z§.y = this.§3<§;
         this.§,Z§.scale = §,!P§;
         this.§1!F§ = §,!P§;
         if(Math.abs(this.§!u§.x - this.§,!K§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§0E§ - this.§,!K§.x) / (this.§!u§.x - this.§,!K§.x) * §5+§;
         }
         this.mDragging = true;
      }
      
      public function §!i§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§@!D§ += param1;
         var _loc3_:Number = this.§#H§ - this.§!7§;
         if(this.§+d§ > 0)
         {
            _loc2_ -= _loc3_ * §#§.§67§ / levelScale / this.§+d§ * §5+§;
            this.§!a§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§!a§ = true;
            }
            if(_loc2_ > §5+§)
            {
               _loc2_ += (§5+§ - _loc2_) * 0.3;
               this.§!a§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§!7§ = this.§#H§;
      }
      
      protected function §&!§() : Boolean
      {
         return this.mCurrentAction == §3z§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§#H§ = param1;
            this.§!Q§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §3z§)
         {
            this.§3!>§(§%!-§);
            if(param1 > 0)
            {
               this.§#H§ = param1;
            }
            _loc3_ = Math.abs(this.§#H§ - this.§54§);
            if(this.§@!D§ < §0&§ && _loc3_ >= §&I§ && _loc3_ >= §>%§ * this.§@!D§ / 1000)
            {
               if(this.§#H§ < this.§54§)
               {
                  this.§3!>§(§7j§);
               }
               else
               {
                  this.§3!>§(§&2§);
               }
               this.§,!G§ = _loc3_ / this.§@!D§ * 10;
               this.§!a§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§!a§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §5+§)
               {
                  this.§!a§ = true;
               }
            }
            else if(this.§@!D§ < §,!3§)
            {
               this.§1M§();
               this.§,!G§ = §5+§ / (§5+§ / 500);
               this.§!a§ = true;
            }
            else
            {
               this.§!i§(0);
               this.§?p§(0);
               this.§,!G§ = §5+§ / (§5+§ / 500);
               this.§!a§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §1M§() : void
      {
         if(this.mCurrentAction == §7j§)
         {
            this.§3!>§(§&2§);
         }
         else if(this.mCurrentAction == §&2§)
         {
            this.§3!>§(§7j§);
         }
         else if(this.mCurrentCameraSliderLocation >= §5+§ / 2)
         {
            this.§3!>§(§&2§);
         }
         else if(this.mCurrentCameraSliderLocation <= §5+§ / 2)
         {
            this.§3!>§(§7j§);
         }
      }
      
      public function §?p§(param1:int) : void
      {
         this.§;! § = param1;
         if(this.mCurrentCameraSliderLocation < §5+§ / 2)
         {
            this.§3!>§(§&2§);
         }
         else
         {
            this.§3!>§(§7j§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§3!>§(§&2§);
      }
      
      public function goToCastleView() : void
      {
         this.§3!>§(§7j§);
      }
      
      public function §3!>§(param1:int) : void
      {
         this.§,Z§.x = this.§0E§;
         this.§,Z§.y = this.§3<§;
         this.§,Z§.scale = §,!P§;
         this.§1!F§ = §,!P§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §5+§)
         {
            return true;
         }
         if(this.mCurrentAction == §7j§)
         {
            return true;
         }
         return false;
      }
      
      public function § !L§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §&2§)
         {
            return true;
         }
         return false;
      }
      
      public function §9L§(param1:§3P§) : void
      {
         this.§^!;§ = param1;
         if(this.§^!;§ != null)
         {
            this.§<m§ = new §3P§();
            this.§<m§.x = this.§0E§;
            this.§<m§.y = this.§3<§;
            this.§<m§.scale = §,!P§;
         }
         else
         {
            this.§0E§ = this.§<m§.x;
            this.§3<§ = this.§<m§.y;
            §,!P§ = this.§<m§.scale;
            this.§<m§ = null;
         }
      }
      
      protected function §=Z§() : void
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
         var _loc3_:Number = this.§--§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§0!6§,Math.min(this.§>!G§,_loc3_));
         if(_loc3_ != this.§--§)
         {
            this.§--§ = _loc3_;
            this.§=Z§();
         }
      }
      
      public function §!Y§() : Number
      {
         return (this.§"o§ - this.§0!6§) / (this.§>!G§ - this.§0!6§);
      }
      
      public function §^!-§(param1:Number) : void
      {
         this.§"o§ = Math.min(Math.max(param1,0),1) * (this.§>!G§ - this.§0!6§) + this.§0!6§;
      }
      
      public function §=K§() : void
      {
         this.§--§ = Math.max(this.§--§ - 0.5,0.5);
      }
      
      public function §']§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§--§;
         _loc1_ += " mXcenterB2: " + this.§0E§;
         _loc1_ += " mYcenterB2: " + this.§3<§;
         _loc1_ += " mXcenterB2target: " + this.§--§;
         _loc1_ += "\n mYcenterB2target: " + this.§--§;
         _loc1_ += " mXcenterB2previous: " + this.§--§;
         _loc1_ += " mYcenterB2previous: " + this.§--§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§--§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§--§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§--§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§--§;
         _loc1_ += " mTargetScale: " + this.§--§;
         _loc1_ += " mTargetScalePrevious: " + this.§--§;
         _loc1_ += " mCastleCameraX: " + this.§--§;
         _loc1_ += "\n mCastleCameraY: " + this.§--§;
         _loc1_ += " mCastleCameraScale: " + this.§--§;
         _loc1_ += " mBirdCameraX: " + this.§--§;
         _loc1_ += " mBirdCameraY: " + this.§--§;
         _loc1_ += " mBirdCameraScale: " + this.§--§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§--§;
         _loc1_ += " mScreenTopScroll: " + this.§--§;
         _loc1_ += " mDragging: " + this.§--§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§--§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§--§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§--§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§--§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§--§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§--§;
         _loc1_ += " mDraggingTimer: " + this.§--§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§--§;
         _loc1_ += " mCameraBorderRight: " + this.§--§;
         _loc1_ += " mCameraBorderSky: " + this.§--§;
         _loc1_ += " mCameraBorderGround: " + this.§--§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§--§ + "\n ");
      }
   }
}
