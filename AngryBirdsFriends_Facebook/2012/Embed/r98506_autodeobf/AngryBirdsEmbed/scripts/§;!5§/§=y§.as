package §;!5§
{
   import §#;§.§+!>§;
   import §#;§.§4!8§;
   import §&c§.§9h§;
   import §-p§.§&2§;
   import §8!G§.§![§;
   import §8!G§.§1w§;
   import §`t§.§^?§;
   
   public class §=y§
   {
      
      public static const §41§:Number = 1.25;
      
      public static const § !K§:Number = 0.15;
      
      public static const §%n§:Number = §^?§.§7i§ * §4!8§.§5+§;
      
      public static const §#!@§:Number = §^?§.§3[§ * §4!8§.§5+§;
      
      public static const §!`§:Number = 0.1;
      
      public static const § !@§:int = 1500;
      
      public static const §>Y§:int = 10;
      
      public static const §0!I§:int = 15;
      
      public static const §;t§:int = 300;
      
      public static const §9;§:int = 1000;
      
      public static const §!d§:int = 10000;
      
      public static const §-e§:int = §!d§ / 50;
      
      public static const §`l§:int = 0;
      
      public static const §^x§:int = 1;
      
      public static const §]w§:int = 2;
      
      public static const §?m§:int = 3;
      
      public static const §[f§:int = 4;
      
      public static const § &§:int = 5;
      
      public static const §<w§:String = "CASTLE";
      
      public static const §#k§:String = "SLINGSHOT";
      
      protected static var §=[§:Number;
      
      public static var §1I§:Number;
      
      public static var §^§:Number;
      
      public static const §"?§:Number = 2000;
       
      
      private var §2!G§:Number = 1.0;
      
      private var §],§:Number = 0.2;
      
      protected var §4!$§:Number;
      
      protected var §,!7§:Number;
      
      protected var §'e§:Number;
      
      public var §3!3§:§4!8§;
      
      public var §^Z§:Number;
      
      public var §2=§:Number;
      
      private var § M§:§ else§;
      
      private var §&!+§:§ else§;
      
      public var § "§:Number;
      
      public var §9G§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §3l§:Number;
      
      public var §4[§:Number;
      
      public var §!g§:Number;
      
      public var §%!G§:Number;
      
      private var §+!E§:Number;
      
      private var §!b§:§>^§;
      
      private var §+v§:§>^§;
      
      protected var §&!&§:Number = 0;
      
      protected var §6T§:Number = 0;
      
      protected var §<F§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §[c§:Number = 0;
      
      public var §6! §:Boolean = true;
      
      public var §^d§:Number = 0;
      
      public var §?7§:Number = 0;
      
      public var §-W§:Number = 0;
      
      public var §'!E§:Number = 0;
      
      public var §^<§:Number = 0;
      
      public var § 6§:Number = 0;
      
      public var §5i§:Number = 0;
      
      public var §2o§:Number = 0;
      
      public var §8!E§:Number = 0;
      
      private var §?&§:§>^§;
      
      public var §#!7§:Number = 0;
      
      private var §=$§:Number = 0;
      
      private var §]G§:Number = 0;
      
      private var §"!1§:§![§ = null;
      
      private var §,R§:§![§ = null;
      
      public function §=y§(param1:§4!8§, param2:§1w§, param3:Number = 1.0)
      {
         this.§?&§ = new §>^§(0,0,1,false);
         super();
         this.§,!7§ = 0;
         this.§'e§ = 0;
         this.§3!3§ = param1;
         §=y§.§=[§ = 1;
         this.§2!G§ = Math.max(1,Math.min(2,param3));
         this.§4!$§ = this.§2!G§;
         this.§-o§(param2);
         if(this.§ M§ && this.§&!+§)
         {
            this.§]h§();
            this.§&!&§ = this.§ M§.x - this.§&!+§.x;
            this.§6T§ = this.§ M§.y - this.§&!+§.y;
            this.§<F§ = this.§ M§.scale - this.§&!+§.scale;
            this.§,!7§ = this.§ M§.x;
            this.§'e§ = this.§ M§.y;
            §=[§ = this.§ M§.scale * this.§4!$§;
         }
         this.mCurrentCameraSliderLocation = §!d§;
         this.§6! § = true;
         this.§[c§ = §!d§ / 500;
      }
      
      private static function §^!D§() : Number
      {
         var _loc1_:Number = §^?§.§3!,§ / §^?§.§7!$§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §=;§() : Number
      {
         return §=[§ * §^!D§();
      }
      
      public function get §7!F§() : Number
      {
         return this.§4!$§;
      }
      
      public function set §7!F§(param1:Number) : void
      {
         this.§4!$§ = param1;
      }
      
      public function get §9e§() : Number
      {
         return this.§+!E§;
      }
      
      public function §9!5§() : Number
      {
         return §%n§ / (this.§4[§ - this.§3l§);
      }
      
      public function get §%!6§() : Number
      {
         return this.§2!G§;
      }
      
      public function get §,!!§() : Number
      {
         return this.§],§;
      }
      
      public function §!t§(param1:Number) : void
      {
         this.§4!$§ = param1;
         this.§5x§();
         this.§?O§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == § &§)
         {
            return;
         }
         this.goToCastleView();
         this.§^d§ = 2000;
         this.§"!5§();
         this.§"!,§();
         this.§<!4§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§,!7§ = this.§&!+§.x;
         this.§'e§ = this.§&!+§.y;
         this.§6! § = false;
         this.§[c§ = §!d§ / 160000 * param1;
         this.§^e§(§ &§);
      }
      
      public function §]h§() : void
      {
         this.§3l§ = this.§&!+§.x - §%n§ / this.§&!+§.scale / 2;
         this.§4[§ = this.§ M§.x + §%n§ / this.§ M§.scale / 2;
         this.§!g§ = this.§3!3§.§-x§.§in § - 20 * §4!8§.§3!+§ * §4!8§.§5+§;
         this.§%!G§ = this.§3!3§.§-x§.§in § + 4;
         var _loc1_:Number = §%n§ / (this.§4[§ - this.§3l§);
         this.§+!E§ = this.§%!G§ - §#!@§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§3!3§ = null;
      }
      
      public function §-o§(param1:§1w§) : void
      {
         var _loc3_:§![§ = null;
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
         while(_loc2_ < param1.§?[§)
         {
            _loc3_ = param1.§%W§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§+p§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §#!@§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = §%n§ / (_loc6_ - _loc5_)) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §#k§)
            {
               this.§&!+§ = new § else§(_loc9_,_loc10_,_loc13_,true);
               this.§+v§ = new §>^§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §<w§)
            {
               this.§ M§ = new § else§(_loc9_,_loc10_,_loc13_,false);
               this.§!b§ = new §>^§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §&2§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §7!C§(param1:§1w§) : void
      {
         var _loc2_:§![§ = new §![§();
         _loc2_.id = §#k§;
         _loc2_.x = this.§&!+§.x;
         _loc2_.y = this.§&!+§.y;
         var _loc3_:Number = §%n§ / this.§&!+§.scale / 2;
         var _loc4_:Number = §#!@§ / this.§&!+§.scale / 2;
         _loc2_.left = this.§&!+§.x - _loc3_;
         _loc2_.right = this.§&!+§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§![§;
         (_loc5_ = new §![§()).id = §<w§;
         _loc5_.x = this.§ M§.x;
         _loc5_.y = this.§ M§.y;
         var _loc6_:Number = §%n§ / this.§ M§.scale / 2;
         var _loc7_:Number = §#!@§ / this.§ M§.scale / 2;
         _loc5_.left = this.§ M§.x - _loc6_;
         _loc5_.right = this.§ M§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§+?§();
         param1.§7s§(_loc2_);
         param1.§7s§(_loc5_);
      }
      
      public function §+p§(param1:§![§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §^?§.§7i§ * 0.5 / _loc2_ * §4!8§.§5+§;
         var _loc4_:Number = param1.y - §^?§.§3[§ * 0.5 / _loc2_ * §4!8§.§5+§;
         var _loc5_:Number = _loc3_ + §^?§.§7i§ / _loc2_ * §4!8§.§5+§;
         var _loc6_:Number = _loc4_ + §^?§.§3[§ / _loc2_ * §4!8§.§5+§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §8H§(param1:§ else§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§[c§;
         if(_loc3_ >= §!d§)
         {
            _loc3_ = §!d§;
            this.§^e§(§`l§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§^e§(§`l§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §!!%§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§[c§;
         var _loc4_:Number = -§!d§ * 0.7;
         if(_loc2_ >= §!d§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §!d§;
            }
            this.§[c§ = -this.§[c§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §<q§(param1:Number) : void
      {
         if(this.mCurrentAction == § &§)
         {
            this.§!!%§(param1);
         }
         else if(this.mCurrentAction == §^x§)
         {
            this.§8H§(this.§ M§,param1);
         }
         else if(this.mCurrentAction == §]w§)
         {
            this.§8H§(this.§&!+§,-param1);
         }
         else if(this.mCurrentAction == §?m§)
         {
            this.§6! § = true;
         }
         else if(this.mCurrentAction == §[f§)
         {
            this.§'q§(param1);
         }
      }
      
      public function § S§(param1:Number) : void
      {
         if(this.§"!1§)
         {
            this.§,!7§ = this.§"!1§.x;
            this.§'e§ = this.§"!1§.y;
            §=[§ = §%n§ / (this.§"!1§.right - this.§"!1§.left);
         }
         else
         {
            this.§5x§();
            this.§<q§(param1);
            this.§5!1§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§"!5§();
         this.§"!,§();
         this.§<!4§();
      }
      
      private function §]U§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§+v§.scale + (this.§!b§.scale - this.§+v§.scale) * param1;
         var _loc4_:Number = this.§+v§.x + (this.§!b§.x - this.§+v§.x) * param1;
         var _loc5_:Number = this.§+v§.y + (this.§!b§.y - this.§+v§.y) * param1;
         this.§?&§.x -= (this.§?&§.x - _loc4_) * param2;
         this.§?&§.y -= (this.§?&§.y - _loc5_) * param2;
         this.§?&§.scale -= (this.§?&§.scale - _loc3_) * param2;
      }
      
      protected function §?O§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§&!&§ != 0)
         {
            if(!this.§6! §)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §!d§;
            this.§]U§(_loc3_,param2);
            this.§,!7§ = this.§?&§.x;
            this.§'e§ = this.§?&§.y;
            §=[§ = this.§?&§.scale;
         }
      }
      
      public function §5!1§(param1:Number, param2:Number) : void
      {
         var _loc5_:§9h§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §!d§)
         {
            this.§6! § = true;
         }
         if(this.mCurrentAction == §?m§)
         {
            if(!this.§3!3§.activeObject)
            {
               this.§^e§(§^x§);
               this.§8!E§ = §9;§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§3!3§.activeObject).§68§().GetPosition().x + (!!_loc5_.§3!%§ ? _loc5_.§3!%§ * §4!8§.§5+§ : 0);
               _loc7_ = _loc5_.§68§().GetPosition().y + (!!_loc5_.§=Y§ ? _loc5_.§=Y§ * §4!8§.§5+§ : 0);
               if((_loc8_ = _loc5_.§68§().GetLinearVelocity().x) > 0 && this.§&!&§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§&!&§ * §!d§;
               }
               if(param1 >= §!d§)
               {
                  param1 = §!d§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §!d§;
               this.§]U§(_loc9_,_loc4_);
               _loc10_ = this.§?&§.x - §%n§ * 0.5 / this.§?&§.scale;
               _loc11_ = this.§?&§.y - §#!@§ * 0.5 / this.§?&§.scale;
               _loc12_ = this.§?&§.x + §%n§ * 0.5 / this.§?&§.scale;
               _loc13_ = this.§?&§.y + §#!@§ * 0.5 / this.§?&§.scale;
               _loc14_ = 150 * §4!8§.§5+§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§3l§,_loc15_);
               _loc17_ = Math.min(this.§4[§,_loc17_);
               _loc19_ = Math.abs(§%n§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§#!@§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§?&§.scale)
               {
                  _loc21_ = this.§?&§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §%n§ * 0.5 / _loc21_ > this.§4[§)
               {
                  _loc15_ = (_loc17_ = this.§4[§) - §%n§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§3l§)
                  {
                     _loc15_ = this.§3l§;
                  }
               }
               if(_loc22_ - §%n§ * 0.5 / _loc21_ < this.§3l§)
               {
                  _loc17_ = (_loc15_ = this.§3l§) + §%n§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§4[§)
                  {
                     _loc17_ = this.§4[§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§%n§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §%n§ * 0.5 / _loc21_ < this.§!g§)
               {
                  _loc23_ = this.§!g§ + §%n§ * 0.5 / _loc21_;
               }
               this.§,!7§ -= (this.§,!7§ - _loc22_) * _loc4_;
               this.§#!7§ -= (this.§#!7§ - _loc21_) * _loc4_;
               §=[§ = this.§#!7§;
               this.§'e§ -= (this.§'e§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§4[§ || _loc6_ <= this.§3l§)
               {
                  this.§?&§.scale = §=[§;
                  this.§?&§.x = this.§,!7§;
                  this.§?&§.y = this.§'e§;
               }
            }
         }
         else
         {
            this.§?O§(param1,_loc4_);
         }
      }
      
      public function §8,§(param1:Number, param2:Number) : void
      {
         this.§=$§ = param1;
         this.§]G§ = param2;
      }
      
      private function §1^§(param1:§>^§, param2:§ else§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = § !K§ + (param2.scale - § !K§) * this.§4!$§ * §=y§.§^!D§();
         if(§%n§ / param1.scale > this.§4[§ - this.§3l§)
         {
            _loc3_ = §%n§ / (this.§4[§ - this.§3l§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §!M§(param1:§>^§, param2:§ else§) : Boolean
      {
         var _loc3_:Boolean = this.§1^§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §#!@§ * 0.5 / param1.scale;
         var _loc5_:Number = §#!@§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §%n§ * 0.5 / param1.scale) < this.§3l§ && param1.§!<§)
         {
            param1.x += this.§3l§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §%n§ * 0.5 / param1.scale) > this.§4[§ && !param1.§!<§)
         {
            param1.x += this.§4[§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §6G§(param1:§>^§, param2:§ else§) : Number
      {
         return (param1.scale - § !K§) / (§=y§.§^!D§() * (param2.scale - § !K§));
      }
      
      protected function §5x§() : void
      {
         this.§!M§(this.§+v§,this.§&!+§);
         var _loc1_:Number = this.§6G§(this.§+v§,this.§&!+§);
         this.§!M§(this.§!b§,this.§ M§);
         var _loc2_:Number = this.§6G§(this.§!b§,this.§ M§);
         this.§4!$§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §"!5§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§3!3§.sprite)
         {
            _loc1_ = §^?§.§ C§() / §^?§.§3!,§ - §^?§.§3[§ >> 1;
            §1I§ = this.§3!3§.sprite.x = §4!8§.§2R§ * ((1 - §=y§.§=;§) / 2);
            §^§ = this.§3!3§.sprite.y = _loc1_ + §4!8§.§3!+§ * (1 - §=y§.§=;§) * §+!>§.§,e§;
         }
      }
      
      public function §<!4§() : void
      {
         if(this.§3!3§.sprite)
         {
            this.§3!3§.sprite.scaleX = §=;§;
            this.§3!3§.sprite.scaleY = §=;§;
         }
      }
      
      public function §"!,§() : void
      {
         var _loc1_:Number = this.§,!7§ / §4!8§.§5+§ + this.§=$§;
         var _loc2_:Number = this.§'e§ / §4!8§.§5+§ + this.§]G§;
         this.§ "§ = _loc1_ - §4!8§.§2R§ / 2 * §^?§.§3!,§ / §^?§.§3;§;
         this.§9G§ = _loc2_ - §4!8§.§3!+§ / 2 + §+!>§.§!-§;
         if(this.§3!3§.background)
         {
            this.§3!3§.background.§4D§(this.§ "§,this.§9G§);
         }
         if(this.§3!3§.objects)
         {
            this.§3!3§.objects.§4D§(this.§ "§,this.§9G§);
         }
         if(this.§3!3§.§9J§)
         {
            this.§3!3§.§9J§.§4D§(this.§ "§,this.§9G§,§=;§);
         }
         if(this.§3!3§.slingshot)
         {
            this.§3!3§.slingshot.§4D§(this.§ "§,this.§9G§);
         }
         if(this.§3!3§.particles)
         {
            this.§3!3§.particles.§4D§(this.§ "§,this.§9G§);
         }
      }
      
      protected function §?<§() : void
      {
         this.§^e§(§[f§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§8!E§ = -1;
         this.§?<§();
         this.§^<§ = this.§5i§ = this.§-W§ = param1;
         this.§ 6§ = this.§2o§ = this.§'!E§ = param2;
         this.§?7§ = 0;
         this.§?&§.x = this.§,!7§;
         this.§?&§.y = this.§'e§;
         this.§?&§.scale = §=[§;
         this.§#!7§ = §=[§;
         if(Math.abs(this.§!b§.x - this.§+v§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§,!7§ - this.§+v§.x) / (this.§!b§.x - this.§+v§.x) * §!d§;
         }
         this.mDragging = true;
      }
      
      public function §'q§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§?7§ += param1;
         var _loc3_:Number = this.§^<§ - this.§5i§;
         if(this.§&!&§ > 0)
         {
            _loc2_ -= _loc3_ * §4!8§.§5+§ / §=;§ / this.§&!&§ * §!d§;
            this.§6! § = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§6! § = true;
            }
            if(_loc2_ > §!d§)
            {
               _loc2_ += (§!d§ - _loc2_) * 0.3;
               this.§6! § = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§5i§ = this.§^<§;
      }
      
      protected function §4!5§() : Boolean
      {
         return this.mCurrentAction == §[f§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§^<§ = param1;
            this.§ 6§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §[f§)
         {
            this.§^e§(§`l§);
            if(param1 > 0)
            {
               this.§^<§ = param1;
            }
            _loc3_ = Math.abs(this.§^<§ - this.§-W§);
            if(this.§?7§ < § !@§ && _loc3_ >= §>Y§ && _loc3_ >= §0!I§ * this.§?7§ / 1000)
            {
               if(this.§^<§ < this.§-W§)
               {
                  this.§^e§(§^x§);
               }
               else
               {
                  this.§^e§(§]w§);
               }
               this.§[c§ = _loc3_ / this.§?7§ * 10;
               this.§6! § = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§6! § = true;
               }
               if(this.mCurrentCameraSliderLocation > §!d§)
               {
                  this.§6! § = true;
               }
            }
            else if(this.§?7§ < §;t§)
            {
               this.§!a§();
               this.§[c§ = §!d§ / (§!d§ / 500);
               this.§6! § = true;
            }
            else
            {
               this.§'q§(0);
               this.§^c§(0);
               this.§[c§ = §!d§ / (§!d§ / 500);
               this.§6! § = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §!a§() : void
      {
         if(this.mCurrentAction == §^x§)
         {
            this.§^e§(§]w§);
         }
         else if(this.mCurrentAction == §]w§)
         {
            this.§^e§(§^x§);
         }
         else if(this.mCurrentCameraSliderLocation >= §!d§ / 2)
         {
            this.§^e§(§]w§);
         }
         else if(this.mCurrentCameraSliderLocation <= §!d§ / 2)
         {
            this.§^e§(§^x§);
         }
      }
      
      public function §^c§(param1:int) : void
      {
         this.§8!E§ = param1;
         if(this.mCurrentCameraSliderLocation < §!d§ / 2)
         {
            this.§^e§(§]w§);
         }
         else
         {
            this.§^e§(§^x§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§^e§(§]w§);
      }
      
      public function goToCastleView() : void
      {
         this.§^e§(§^x§);
      }
      
      public function §^e§(param1:int) : void
      {
         this.§?&§.x = this.§,!7§;
         this.§?&§.y = this.§'e§;
         this.§?&§.scale = §=[§;
         this.§#!7§ = §=[§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §!d§)
         {
            return true;
         }
         if(this.mCurrentAction == §^x§)
         {
            return true;
         }
         return false;
      }
      
      public function §1O§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §]w§)
         {
            return true;
         }
         return false;
      }
      
      public function §6!1§(param1:§![§) : void
      {
         this.§"!1§ = param1;
         if(this.§"!1§ != null)
         {
            this.§,R§ = new §![§();
            this.§,R§.x = this.§,!7§;
            this.§,R§.y = this.§'e§;
            this.§,R§.scale = §=[§;
         }
         else
         {
            this.§,!7§ = this.§,R§.x;
            this.§'e§ = this.§,R§.y;
            §=[§ = this.§,R§.scale;
            this.§,R§ = null;
         }
      }
      
      protected function §3Y§() : void
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
         var _loc3_:Number = this.§4!$§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§,!!§,Math.min(this.§%!6§,_loc3_));
         if(_loc3_ != this.§4!$§)
         {
            this.§4!$§ = _loc3_;
            this.§3Y§();
         }
      }
      
      public function §8C§() : Number
      {
         return (this.§7!F§ - this.§,!!§) / (this.§%!6§ - this.§,!!§);
      }
      
      public function §?q§(param1:Number) : void
      {
         this.§7!F§ = Math.min(Math.max(param1,0),1) * (this.§%!6§ - this.§,!!§) + this.§,!!§;
      }
      
      public function §[y§() : void
      {
         this.§4!$§ = Math.max(this.§4!$§ - 0.5,0.5);
      }
      
      public function §1c§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§4!$§;
         _loc1_ += " mXcenterB2: " + this.§,!7§;
         _loc1_ += " mYcenterB2: " + this.§'e§;
         _loc1_ += " mXcenterB2target: " + this.§4!$§;
         _loc1_ += "\n mYcenterB2target: " + this.§4!$§;
         _loc1_ += " mXcenterB2previous: " + this.§4!$§;
         _loc1_ += " mYcenterB2previous: " + this.§4!$§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§4!$§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§4!$§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§4!$§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§4!$§;
         _loc1_ += " mTargetScale: " + this.§4!$§;
         _loc1_ += " mTargetScalePrevious: " + this.§4!$§;
         _loc1_ += " mCastleCameraX: " + this.§4!$§;
         _loc1_ += "\n mCastleCameraY: " + this.§4!$§;
         _loc1_ += " mCastleCameraScale: " + this.§4!$§;
         _loc1_ += " mBirdCameraX: " + this.§4!$§;
         _loc1_ += " mBirdCameraY: " + this.§4!$§;
         _loc1_ += " mBirdCameraScale: " + this.§4!$§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§4!$§;
         _loc1_ += " mScreenTopScroll: " + this.§4!$§;
         _loc1_ += " mDragging: " + this.§4!$§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§4!$§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§4!$§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§4!$§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§4!$§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§4!$§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§4!$§;
         _loc1_ += " mDraggingTimer: " + this.§4!$§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§4!$§;
         _loc1_ += " mCameraBorderRight: " + this.§4!$§;
         _loc1_ += " mCameraBorderSky: " + this.§4!$§;
         _loc1_ += " mCameraBorderGround: " + this.§4!$§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§4!$§ + "\n ");
      }
   }
}
