package §#V§
{
   import §#b§.§85§;
   import §#b§.§8j§;
   import §-A§.§%9§;
   import §-A§.§^`§;
   import §;z§.§!+§;
   import §=g§.§@!L§;
   import §@!W§.§8!W§;
   
   public class §,!W§
   {
      
      public static const §<!8§:Number = 1.25;
      
      public static const §4!!§:Number = 0.15;
      
      public static const §7I§:Number = §8!W§.§34§ * §%9§.§1[§;
      
      public static const §%1§:Number = §8!W§.§!=§ * §%9§.§1[§;
      
      public static const §+7§:Number = 0.1;
      
      public static const §@c§:int = 1500;
      
      public static const §5!6§:int = 10;
      
      public static const §]F§:int = 15;
      
      public static const §`!E§:int = 300;
      
      public static const §'!W§:int = 1000;
      
      public static const §;!=§:int = 10000;
      
      public static const §"h§:int = §;!=§ / 50;
      
      public static const §=!A§:int = 0;
      
      public static const §-F§:int = 1;
      
      public static const §"!3§:int = 2;
      
      public static const §]!P§:int = 3;
      
      public static const §1G§:int = 4;
      
      public static const §?u§:int = 5;
      
      public static const §[z§:String = "CASTLE";
      
      public static const §%b§:String = "SLINGSHOT";
      
      protected static var §&<§:Number;
      
      public static var §[!L§:Number;
      
      public static var §@!O§:Number;
      
      public static const §?!%§:Number = 2000;
       
      
      private var §4!>§:Number = 1.0;
      
      private var §2! §:Number = 0.2;
      
      protected var §#!=§:Number;
      
      protected var §-b§:Number;
      
      protected var §`,§:Number;
      
      public var §return§:§%9§;
      
      public var §1![§:Number;
      
      public var §1§:Number;
      
      private var §'!3§:§2X§;
      
      private var §9!"§:§2X§;
      
      public var §9!+§:Number;
      
      public var §1!&§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §#!D§:Number;
      
      public var §+! §:Number;
      
      public var §]-§:Number;
      
      public var §4!H§:Number;
      
      private var §^m§:Number;
      
      private var §7U§:§5R§;
      
      private var §<y§:§5R§;
      
      protected var §8!G§:Number = 0;
      
      protected var §]0§:Number = 0;
      
      protected var §35§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §%W§:Number = 0;
      
      public var § P§:Boolean = true;
      
      public var §6i§:Number = 0;
      
      public var §@;§:Number = 0;
      
      public var §7!3§:Number = 0;
      
      public var §2!-§:Number = 0;
      
      public var §[<§:Number = 0;
      
      public var §@!U§:Number = 0;
      
      public var §``§:Number = 0;
      
      public var §'!]§:Number = 0;
      
      public var §0B§:Number = 0;
      
      private var §-! §:§5R§;
      
      public var §?!<§:Number = 0;
      
      private var §[!`§:Number = 0;
      
      private var §^M§:Number = 0;
      
      private var §break§:§8j§ = null;
      
      private var §2_§:§8j§ = null;
      
      public function §,!W§(param1:§%9§, param2:§85§, param3:Number = 1.0)
      {
         this.§-! § = new §5R§(0,0,1,false);
         super();
         this.§-b§ = 0;
         this.§`,§ = 0;
         this.§return§ = param1;
         §,!W§.§&<§ = 1;
         this.§4!>§ = Math.max(1,Math.min(2,param3));
         this.§#!=§ = this.§4!>§;
         this.§]P§(param2);
         if(this.§'!3§ && this.§9!"§)
         {
            this.§2!]§();
            this.§8!G§ = this.§'!3§.x - this.§9!"§.x;
            this.§]0§ = this.§'!3§.y - this.§9!"§.y;
            this.§35§ = this.§'!3§.scale - this.§9!"§.scale;
            this.§-b§ = this.§'!3§.x;
            this.§`,§ = this.§'!3§.y;
            §&<§ = this.§'!3§.scale * this.§#!=§;
         }
         this.mCurrentCameraSliderLocation = §;!=§;
         this.§ P§ = true;
         this.§%W§ = §;!=§ / 500;
      }
      
      private static function §#!C§() : Number
      {
         var _loc1_:Number = §8!W§.§[w§ / §8!W§.§@!+§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §+!R§() : Number
      {
         return §&<§ * §#!C§();
      }
      
      public function get manualScale() : Number
      {
         return this.§#!=§;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.§#!=§ = param1;
      }
      
      public function get §>&§() : Number
      {
         return this.§^m§;
      }
      
      public function §-o§() : Number
      {
         return §7I§ / (this.§+! § - this.§#!D§);
      }
      
      public function get §2!C§() : Number
      {
         return this.§4!>§;
      }
      
      public function get §8!'§() : Number
      {
         return this.§2! §;
      }
      
      public function §=I§(param1:Number) : void
      {
         this.§#!=§ = param1;
         this.§1K§();
         this.§47§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §?u§)
         {
            return;
         }
         this.goToCastleView();
         this.§6i§ = 2000;
         this.§9v§();
         this.§2-§();
         this.§06§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§-b§ = this.§9!"§.x;
         this.§`,§ = this.§9!"§.y;
         this.§ P§ = false;
         this.§%W§ = §;!=§ / 160000 * param1;
         this.§?2§(§?u§);
      }
      
      public function §2!]§() : void
      {
         this.§#!D§ = this.§9!"§.x - §7I§ / this.§9!"§.scale / 2;
         this.§+! § = this.§'!3§.x + §7I§ / this.§'!3§.scale / 2;
         this.§]-§ = this.§return§.§#!a§.§>6§ - 20 * §%9§.§[!F§ * §%9§.§1[§;
         this.§4!H§ = this.§return§.§#!a§.§>6§ + 4;
         var _loc1_:Number = §7I§ / (this.§+! § - this.§#!D§);
         this.§^m§ = this.§4!H§ - §%1§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§return§ = null;
      }
      
      public function §]P§(param1:§85§) : void
      {
         var _loc3_:§8j§ = null;
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
         while(_loc2_ < param1.§4!`§)
         {
            _loc3_ = param1.§"Z§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§2!<§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §%1§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §7I§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §%b§)
            {
               this.§9!"§ = new §2X§(_loc9_,_loc10_,_loc13_,true);
               this.§<y§ = new §5R§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §[z§)
            {
               this.§'!3§ = new §2X§(_loc9_,_loc10_,_loc13_,false);
               this.§7U§ = new §5R§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §@!L§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §;O§(param1:§85§) : void
      {
         var _loc2_:§8j§ = new §8j§();
         _loc2_.id = §%b§;
         _loc2_.x = this.§9!"§.x;
         _loc2_.y = this.§9!"§.y;
         var _loc3_:Number = §7I§ / this.§9!"§.scale / 2;
         var _loc4_:Number = §%1§ / this.§9!"§.scale / 2;
         _loc2_.left = this.§9!"§.x - _loc3_;
         _loc2_.right = this.§9!"§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§8j§;
         (_loc5_ = new §8j§()).id = §[z§;
         _loc5_.x = this.§'!3§.x;
         _loc5_.y = this.§'!3§.y;
         var _loc6_:Number = §7I§ / this.§'!3§.scale / 2;
         var _loc7_:Number = §%1§ / this.§'!3§.scale / 2;
         _loc5_.left = this.§'!3§.x - _loc6_;
         _loc5_.right = this.§'!3§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§]v§();
         param1.§0§(_loc2_);
         param1.§0§(_loc5_);
      }
      
      public function §2!<§(param1:§8j§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §8!W§.§34§ * 0.5 / _loc2_ * §%9§.§1[§;
         var _loc4_:Number = param1.y - §8!W§.§!=§ * 0.5 / _loc2_ * §%9§.§1[§;
         var _loc5_:Number = _loc3_ + §8!W§.§34§ / _loc2_ * §%9§.§1[§;
         var _loc6_:Number = _loc4_ + §8!W§.§!=§ / _loc2_ * §%9§.§1[§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §<l§(param1:§2X§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§%W§;
         if(_loc3_ >= §;!=§)
         {
            _loc3_ = §;!=§;
            this.§?2§(§=!A§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§?2§(§=!A§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §<!@§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§%W§;
         var _loc4_:Number = -§;!=§ * 0.7;
         if(_loc2_ >= §;!=§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §;!=§;
            }
            this.§%W§ = -this.§%W§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §]Z§(param1:Number) : void
      {
         if(this.mCurrentAction == §?u§)
         {
            this.§<!@§(param1);
         }
         else if(this.mCurrentAction == §-F§)
         {
            this.§<l§(this.§'!3§,param1);
         }
         else if(this.mCurrentAction == §"!3§)
         {
            this.§<l§(this.§9!"§,-param1);
         }
         else if(this.mCurrentAction == §]!P§)
         {
            this.§ P§ = true;
         }
         else if(this.mCurrentAction == §1G§)
         {
            this.§7!M§(param1);
         }
      }
      
      public function §'X§(param1:Number) : void
      {
         if(this.§break§)
         {
            this.§-b§ = this.§break§.x;
            this.§`,§ = this.§break§.y;
            §&<§ = §7I§ / (this.§break§.right - this.§break§.left);
         }
         else
         {
            this.§1K§();
            this.§]Z§(param1);
            this.§;!V§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§9v§();
         this.§2-§();
         this.§06§();
      }
      
      private function §&i§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<y§.scale + (this.§7U§.scale - this.§<y§.scale) * param1;
         var _loc4_:Number = this.§<y§.x + (this.§7U§.x - this.§<y§.x) * param1;
         var _loc5_:Number = this.§<y§.y + (this.§7U§.y - this.§<y§.y) * param1;
         this.§-! §.x -= (this.§-! §.x - _loc4_) * param2;
         this.§-! §.y -= (this.§-! §.y - _loc5_) * param2;
         this.§-! §.scale -= (this.§-! §.scale - _loc3_) * param2;
      }
      
      protected function §47§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§8!G§ != 0)
         {
            if(!this.§ P§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §;!=§;
            this.§&i§(_loc3_,param2);
            this.§-b§ = this.§-! §.x;
            this.§`,§ = this.§-! §.y;
            §&<§ = this.§-! §.scale;
         }
      }
      
      public function §;!V§(param1:Number, param2:Number) : void
      {
         var _loc5_:§!+§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §;!=§)
         {
            this.§ P§ = true;
         }
         if(this.mCurrentAction == §]!P§)
         {
            if(!this.§return§.activeObject)
            {
               this.§?2§(§-F§);
               this.§0B§ = §'!W§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§return§.activeObject).§^!V§().GetPosition().x + (!!_loc5_.§70§ ? _loc5_.§70§ * §%9§.§1[§ : 0);
               _loc7_ = _loc5_.§^!V§().GetPosition().y + (!!_loc5_.§9i§ ? _loc5_.§9i§ * §%9§.§1[§ : 0);
               if((_loc8_ = _loc5_.§^!V§().GetLinearVelocity().x) > 0 && this.§8!G§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§8!G§ * §;!=§;
               }
               if(param1 >= §;!=§)
               {
                  param1 = §;!=§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §;!=§;
               this.§&i§(_loc9_,_loc4_);
               _loc10_ = this.§-! §.x - §7I§ * 0.5 / this.§-! §.scale;
               _loc11_ = this.§-! §.y - §%1§ * 0.5 / this.§-! §.scale;
               _loc12_ = this.§-! §.x + §7I§ * 0.5 / this.§-! §.scale;
               _loc13_ = this.§-! §.y + §%1§ * 0.5 / this.§-! §.scale;
               _loc14_ = 150 * §%9§.§1[§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§#!D§,_loc15_);
               _loc17_ = Math.min(this.§+! §,_loc17_);
               _loc19_ = Math.abs(§7I§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§%1§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§-! §.scale)
               {
                  _loc21_ = this.§-! §.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §7I§ * 0.5 / _loc21_ > this.§+! §)
               {
                  _loc15_ = (_loc17_ = this.§+! §) - §7I§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§#!D§)
                  {
                     _loc15_ = this.§#!D§;
                  }
               }
               if(_loc22_ - §7I§ * 0.5 / _loc21_ < this.§#!D§)
               {
                  _loc17_ = (_loc15_ = this.§#!D§) + §7I§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§+! §)
                  {
                     _loc17_ = this.§+! §;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§7I§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §7I§ * 0.5 / _loc21_ < this.§]-§)
               {
                  _loc23_ = this.§]-§ + §7I§ * 0.5 / _loc21_;
               }
               this.§-b§ -= (this.§-b§ - _loc22_) * _loc4_;
               this.§?!<§ -= (this.§?!<§ - _loc21_) * _loc4_;
               §&<§ = this.§?!<§;
               this.§`,§ -= (this.§`,§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§+! § || _loc6_ <= this.§#!D§)
               {
                  this.§-! §.scale = §&<§;
                  this.§-! §.x = this.§-b§;
                  this.§-! §.y = this.§`,§;
               }
            }
         }
         else
         {
            this.§47§(param1,_loc4_);
         }
      }
      
      public function §1x§(param1:Number, param2:Number) : void
      {
         this.§[!`§ = param1;
         this.§^M§ = param2;
      }
      
      private function §'!K§(param1:§5R§, param2:§2X§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §4!!§ + (param2.scale - §4!!§) * this.§#!=§ * §,!W§.§#!C§();
         if(§7I§ / param1.scale > this.§+! § - this.§#!D§)
         {
            _loc3_ = §7I§ / (this.§+! § - this.§#!D§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §`L§(param1:§5R§, param2:§2X§) : Boolean
      {
         var _loc3_:Boolean = this.§'!K§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §%1§ * 0.5 / param1.scale;
         var _loc5_:Number = §%1§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §7I§ * 0.5 / param1.scale) < this.§#!D§ && param1.§#!<§)
         {
            param1.x += this.§#!D§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §7I§ * 0.5 / param1.scale) > this.§+! § && !param1.§#!<§)
         {
            param1.x += this.§+! § - _loc7_;
         }
         return _loc3_;
      }
      
      private function §'p§(param1:§5R§, param2:§2X§) : Number
      {
         return (param1.scale - §4!!§) / (§,!W§.§#!C§() * (param2.scale - §4!!§));
      }
      
      protected function §1K§() : void
      {
         this.§`L§(this.§<y§,this.§9!"§);
         var _loc1_:Number = this.§'p§(this.§<y§,this.§9!"§);
         this.§`L§(this.§7U§,this.§'!3§);
         var _loc2_:Number = this.§'p§(this.§7U§,this.§'!3§);
         this.§#!=§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §9v§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§return§.sprite)
         {
            _loc1_ = §8!W§.§2!A§() / §8!W§.§[w§ - §8!W§.§!=§ >> 1;
            §[!L§ = this.§return§.sprite.x = §%9§.§+!X§ * ((1 - §,!W§.§+!R§) / 2);
            §@!O§ = this.§return§.sprite.y = _loc1_ + §%9§.§[!F§ * (1 - §,!W§.§+!R§) * §^`§.§?!E§;
         }
      }
      
      public function §06§() : void
      {
         if(this.§return§.sprite)
         {
            this.§return§.sprite.scaleX = §+!R§;
            this.§return§.sprite.scaleY = §+!R§;
         }
      }
      
      public function §2-§() : void
      {
         var _loc1_:Number = this.§-b§ / §%9§.§1[§ + this.§[!`§;
         var _loc2_:Number = this.§`,§ / §%9§.§1[§ + this.§^M§;
         this.§9!+§ = _loc1_ - §%9§.§+!X§ / 2 * §8!W§.§[w§ / §8!W§.§`![§;
         this.§1!&§ = _loc2_ - §%9§.§[!F§ / 2 + §^`§.§&F§;
         if(this.§return§.background)
         {
            this.§return§.background.§"0§(this.§9!+§,this.§1!&§);
         }
         if(this.§return§.objects)
         {
            this.§return§.objects.§"0§(this.§9!+§,this.§1!&§);
         }
         if(this.§return§.mLevelEngine)
         {
            this.§return§.mLevelEngine.§"0§(this.§9!+§,this.§1!&§,§+!R§);
         }
         if(this.§return§.slingshot)
         {
            this.§return§.slingshot.§"0§(this.§9!+§,this.§1!&§);
         }
         if(this.§return§.particles)
         {
            this.§return§.particles.§"0§(this.§9!+§,this.§1!&§);
         }
      }
      
      protected function §`G§() : void
      {
         this.§?2§(§1G§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§0B§ = -1;
         this.§`G§();
         this.§[<§ = this.§``§ = this.§7!3§ = param1;
         this.§@!U§ = this.§'!]§ = this.§2!-§ = param2;
         this.§@;§ = 0;
         this.§-! §.x = this.§-b§;
         this.§-! §.y = this.§`,§;
         this.§-! §.scale = §&<§;
         this.§?!<§ = §&<§;
         if(Math.abs(this.§7U§.x - this.§<y§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§-b§ - this.§<y§.x) / (this.§7U§.x - this.§<y§.x) * §;!=§;
         }
         this.mDragging = true;
      }
      
      public function §7!M§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§@;§ += param1;
         var _loc3_:Number = this.§[<§ - this.§``§;
         if(this.§8!G§ > 0)
         {
            _loc2_ -= _loc3_ * §%9§.§1[§ / §+!R§ / this.§8!G§ * §;!=§;
            this.§ P§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§ P§ = true;
            }
            if(_loc2_ > §;!=§)
            {
               _loc2_ += (§;!=§ - _loc2_) * 0.3;
               this.§ P§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§``§ = this.§[<§;
      }
      
      protected function §4!0§() : Boolean
      {
         return this.mCurrentAction == §1G§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§[<§ = param1;
            this.§@!U§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §1G§)
         {
            this.§?2§(§=!A§);
            if(param1 > 0)
            {
               this.§[<§ = param1;
            }
            _loc3_ = Math.abs(this.§[<§ - this.§7!3§);
            if(this.§@;§ < §@c§ && _loc3_ >= §5!6§ && _loc3_ >= §]F§ * this.§@;§ / 1000)
            {
               if(this.§[<§ < this.§7!3§)
               {
                  this.§?2§(§-F§);
               }
               else
               {
                  this.§?2§(§"!3§);
               }
               this.§%W§ = _loc3_ / this.§@;§ * 10;
               this.§ P§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§ P§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §;!=§)
               {
                  this.§ P§ = true;
               }
            }
            else if(this.§@;§ < §`!E§)
            {
               this.§>;§();
               this.§%W§ = §;!=§ / (§;!=§ / 500);
               this.§ P§ = true;
            }
            else
            {
               this.§7!M§(0);
               this.§^i§(0);
               this.§%W§ = §;!=§ / (§;!=§ / 500);
               this.§ P§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §>;§() : void
      {
         if(this.mCurrentAction == §-F§)
         {
            this.§?2§(§"!3§);
         }
         else if(this.mCurrentAction == §"!3§)
         {
            this.§?2§(§-F§);
         }
         else if(this.mCurrentCameraSliderLocation >= §;!=§ / 2)
         {
            this.§?2§(§"!3§);
         }
         else if(this.mCurrentCameraSliderLocation <= §;!=§ / 2)
         {
            this.§?2§(§-F§);
         }
      }
      
      public function §^i§(param1:int) : void
      {
         this.§0B§ = param1;
         if(this.mCurrentCameraSliderLocation < §;!=§ / 2)
         {
            this.§?2§(§"!3§);
         }
         else
         {
            this.§?2§(§-F§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§?2§(§"!3§);
      }
      
      public function goToCastleView() : void
      {
         this.§?2§(§-F§);
      }
      
      public function §?2§(param1:int) : void
      {
         this.§-! §.x = this.§-b§;
         this.§-! §.y = this.§`,§;
         this.§-! §.scale = §&<§;
         this.§?!<§ = §&<§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §;!=§)
         {
            return true;
         }
         if(this.mCurrentAction == §-F§)
         {
            return true;
         }
         return false;
      }
      
      public function §&!#§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §"!3§)
         {
            return true;
         }
         return false;
      }
      
      public function §^v§(param1:§8j§) : void
      {
         this.§break§ = param1;
         if(this.§break§ != null)
         {
            this.§2_§ = new §8j§();
            this.§2_§.x = this.§-b§;
            this.§2_§.y = this.§`,§;
            this.§2_§.scale = §&<§;
         }
         else
         {
            this.§-b§ = this.§2_§.x;
            this.§`,§ = this.§2_§.y;
            §&<§ = this.§2_§.scale;
            this.§2_§ = null;
         }
      }
      
      protected function §`_§() : void
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
         var _loc3_:Number = this.§#!=§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§8!'§,Math.min(this.§2!C§,_loc3_));
         if(_loc3_ != this.§#!=§)
         {
            this.§#!=§ = _loc3_;
            this.§`_§();
         }
      }
      
      public function §8l§() : Number
      {
         return (this.manualScale - this.§8!'§) / (this.§2!C§ - this.§8!'§);
      }
      
      public function § #§(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.§2!C§ - this.§8!'§) + this.§8!'§;
      }
      
      public function §>!%§() : void
      {
         this.§#!=§ = Math.max(this.§#!=§ - 0.5,0.5);
      }
      
      public function §9h§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§#!=§;
         _loc1_ += " mXcenterB2: " + this.§-b§;
         _loc1_ += " mYcenterB2: " + this.§`,§;
         _loc1_ += " mXcenterB2target: " + this.§#!=§;
         _loc1_ += "\n mYcenterB2target: " + this.§#!=§;
         _loc1_ += " mXcenterB2previous: " + this.§#!=§;
         _loc1_ += " mYcenterB2previous: " + this.§#!=§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§#!=§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§#!=§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§#!=§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§#!=§;
         _loc1_ += " mTargetScale: " + this.§#!=§;
         _loc1_ += " mTargetScalePrevious: " + this.§#!=§;
         _loc1_ += " mCastleCameraX: " + this.§#!=§;
         _loc1_ += "\n mCastleCameraY: " + this.§#!=§;
         _loc1_ += " mCastleCameraScale: " + this.§#!=§;
         _loc1_ += " mBirdCameraX: " + this.§#!=§;
         _loc1_ += " mBirdCameraY: " + this.§#!=§;
         _loc1_ += " mBirdCameraScale: " + this.§#!=§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§#!=§;
         _loc1_ += " mScreenTopScroll: " + this.§#!=§;
         _loc1_ += " mDragging: " + this.§#!=§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§#!=§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§#!=§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§#!=§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§#!=§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§#!=§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§#!=§;
         _loc1_ += " mDraggingTimer: " + this.§#!=§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§#!=§;
         _loc1_ += " mCameraBorderRight: " + this.§#!=§;
         _loc1_ += " mCameraBorderSky: " + this.§#!=§;
         _loc1_ += " mCameraBorderGround: " + this.§#!=§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§#!=§ + "\n ");
      }
   }
}
