package §!!=§
{
   import §+!c§.§;!=§;
   import §4!<§.§'!S§;
   import §4!<§.§>">§;
   import §9!n§.§0"T§;
   import §9!n§.§1S§;
   import §@!"§.§?l§;
   import §`!G§.§[!8§;
   
   public class §"l§
   {
      
      public static const §,!k§:Number = 1.25;
      
      public static const §[!M§:Number = 0.15;
      
      public static const §8! §:Number = §?l§.§7!H§ * §'!S§.§2"<§;
      
      public static const §,",§:Number = §?l§.§<"P§ * §'!S§.§2"<§;
      
      public static const §[!S§:Number = 0.1;
      
      public static const §;"1§:int = 1500;
      
      public static const §4o§:int = 10;
      
      public static const §>d§:int = 15;
      
      public static const §9!c§:int = 300;
      
      public static const §``§:int = 1000;
      
      public static const §-5§:int = 10000;
      
      public static const §6!7§:int = §-5§ / 50;
      
      public static const § !c§:int = 0;
      
      public static const §',§:int = 1;
      
      public static const §9!E§:int = 2;
      
      public static const §<!N§:int = 3;
      
      public static const § "2§:int = 4;
      
      public static const §true§:int = 5;
      
      public static const §6"[§:String = "CASTLE";
      
      public static const §=!M§:String = "SLINGSHOT";
      
      protected static var §<"E§:Number;
      
      public static var §2!N§:Number;
      
      public static var §-"T§:Number;
      
      public static const §?!,§:Number = 2000;
       
      
      private var §!!7§:Number = 1.0;
      
      private var §;!<§:Number = 0.2;
      
      protected var §4`§:Number;
      
      protected var §-"D§:Number;
      
      protected var §,5§:Number;
      
      public var mLevelMain:§'!S§;
      
      public var §,"I§:Number;
      
      public var §,!#§:Number;
      
      protected var §8">§:§5!;§;
      
      protected var §0m§:§5!;§;
      
      public var §8@§:Number;
      
      public var §@";§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §`"E§:Number;
      
      public var §^z§:Number;
      
      public var §8"D§:Number;
      
      public var §&!=§:Number;
      
      private var §4!p§:Number;
      
      private var §+!g§:§@&§;
      
      private var §%!z§:§@&§;
      
      protected var §&&§:Number = 0;
      
      protected var §=B§:Number = 0;
      
      protected var §""3§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var § "R§:Number = 0;
      
      public var §'"C§:Boolean = true;
      
      public var §-]§:Number = 0;
      
      public var §[t§:Number = 0;
      
      public var §`7§:Number = 0;
      
      public var §["B§:Number = 0;
      
      public var §0!#§:Number = 0;
      
      public var §6!D§:Number = 0;
      
      public var §#&§:Number = 0;
      
      public var §!!8§:Number = 0;
      
      public var § "'§:Number = 0;
      
      private var §+l§:§@&§;
      
      public var §!"6§:Number = 0;
      
      private var §#"§:Number = 0;
      
      private var §[P§:Number = 0;
      
      private var §`"C§:§1S§ = null;
      
      private var §'f§:§1S§ = null;
      
      public function §"l§(param1:§'!S§, param2:§0"T§, param3:Number = 1.0)
      {
         this.§+l§ = new §@&§(0,0,1,false);
         super();
         this.§-"D§ = 0;
         this.§,5§ = 0;
         this.mLevelMain = param1;
         §"l§.§<"E§ = 1;
         this.§!!7§ = Math.max(1,Math.min(2,param3));
         this.§4`§ = this.§!!7§;
         this.§+t§(param2);
         if(this.§8">§ && this.§0m§)
         {
            this.§@"S§();
            this.§&&§ = this.§8">§.x - this.§0m§.x;
            this.§=B§ = this.§8">§.y - this.§0m§.y;
            this.§""3§ = this.§8">§.scale - this.§0m§.scale;
            this.§-"D§ = this.§8">§.x;
            this.§,5§ = this.§8">§.y;
            §<"E§ = this.§8">§.scale * this.§4`§;
         }
         this.mCurrentCameraSliderLocation = §-5§;
         this.§'"C§ = true;
         this.§ "R§ = §-5§ / 500;
      }
      
      private static function §0N§() : Number
      {
         var _loc1_:Number = §?l§.§+!9§ / §?l§.§0!S§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §@!>§() : Number
      {
         return §<"E§ * §0N§();
      }
      
      public function get §=!r§() : Number
      {
         return this.§4`§;
      }
      
      public function set §=!r§(param1:Number) : void
      {
         this.§4`§ = param1;
      }
      
      public function get §=#§() : Number
      {
         return this.§4!p§;
      }
      
      public function §90§() : Number
      {
         return §8! § / (this.§^z§ - this.§`"E§);
      }
      
      public function get §["C§() : Number
      {
         return this.§!!7§;
      }
      
      public function get §"!?§() : Number
      {
         return this.§;!<§;
      }
      
      public function §#"8§(param1:Number) : void
      {
         this.§4`§ = param1;
         this.§!?§();
         this.§1!C§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §true§)
         {
            return;
         }
         this.goToCastleView();
         this.§-]§ = 2000;
         this.§@"U§();
         this.§"P§();
         this.§0!u§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§-"D§ = this.§0m§.x;
         this.§,5§ = this.§0m§.y;
         this.§'"C§ = false;
         this.§ "R§ = §-5§ / 160000 * param1;
         this.§5"@§(§true§);
      }
      
      public function §@"S§() : void
      {
         this.§`"E§ = this.§0m§.x - §8! § / this.§0m§.scale / 2;
         this.§^z§ = this.§8">§.x + §8! § / this.§8">§.scale / 2;
         this.§8"D§ = this.mLevelMain.§-!z§.§]2§ - 20 * §'!S§.§#L§ * §'!S§.§2"<§;
         this.§&!=§ = this.mLevelMain.§-!z§.§]2§ + 4;
         var _loc1_:Number = §8! § / (this.§^z§ - this.§`"E§);
         this.§4!p§ = this.§&!=§ - §,",§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function §+t§(param1:§0"T§) : void
      {
         var _loc3_:§1S§ = null;
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
         while(_loc2_ < param1.§ H§)
         {
            _loc3_ = param1.§8!D§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§8!#§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §,",§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = Number(§8! § / (_loc6_ - _loc5_))) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §=!M§)
            {
               this.§0m§ = new §5!;§(_loc9_,_loc10_,_loc13_,true);
               this.§%!z§ = new §@&§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §6"[§)
            {
               this.§8">§ = new §5!;§(_loc9_,_loc10_,_loc13_,false);
               this.§+!g§ = new §@&§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §;!=§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §?";§(param1:§0"T§) : void
      {
         var _loc2_:§1S§ = new §1S§();
         _loc2_.id = §=!M§;
         _loc2_.x = this.§0m§.x;
         _loc2_.y = this.§0m§.y;
         var _loc3_:Number = §8! § / this.§0m§.scale / 2;
         var _loc4_:Number = §,",§ / this.§0m§.scale / 2;
         _loc2_.left = this.§0m§.x - _loc3_;
         _loc2_.right = this.§0m§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:Number = §,",§ / (_loc2_.bottom - _loc2_.top);
         var _loc6_:Number = §8! § / (_loc2_.right - _loc2_.left);
         _loc2_.scale = Math.min(_loc6_,_loc5_);
         var _loc7_:§1S§;
         (_loc7_ = new §1S§()).id = §6"[§;
         _loc7_.x = this.§8">§.x;
         _loc7_.y = this.§8">§.y;
         var _loc8_:Number = §8! § / this.§8">§.scale / 2;
         var _loc9_:Number = §,",§ / this.§8">§.scale / 2;
         _loc7_.left = this.§8">§.x - _loc8_;
         _loc7_.right = this.§8">§.x + _loc8_;
         _loc7_.top = _loc7_.y - _loc9_;
         _loc7_.bottom = _loc7_.y + _loc9_;
         _loc5_ = §,",§ / (_loc7_.bottom - _loc7_.top);
         _loc6_ = §8! § / (_loc7_.right - _loc7_.left);
         _loc7_.scale = Math.min(_loc6_,_loc5_);
         param1.§0"[§();
         param1.§9"Q§(_loc2_);
         param1.§9"Q§(_loc7_);
      }
      
      public function §8!#§(param1:§1S§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §?l§.§7!H§ * 0.5 / _loc2_ * §'!S§.§2"<§;
         var _loc4_:Number = param1.y - §?l§.§<"P§ * 0.5 / _loc2_ * §'!S§.§2"<§;
         var _loc5_:Number = _loc3_ + §?l§.§7!H§ / _loc2_ * §'!S§.§2"<§;
         var _loc6_:Number = _loc4_ + §?l§.§<"P§ / _loc2_ * §'!S§.§2"<§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §6X§(param1:§5!;§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§ "R§;
         if(_loc3_ >= §-5§)
         {
            _loc3_ = §-5§;
            this.§5"@§(§ !c§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§5"@§(§ !c§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      protected function §"J§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§ "R§;
         var _loc4_:Number = -§-5§ * 0.7;
         if(_loc2_ >= §-5§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §-5§;
            }
            this.§ "R§ = -this.§ "R§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §=!!§(param1:Number) : void
      {
         if(this.mCurrentAction == §true§)
         {
            this.§"J§(param1);
         }
         else if(this.mCurrentAction == §',§)
         {
            this.§6X§(this.§8">§,param1);
         }
         else if(this.mCurrentAction == §9!E§)
         {
            this.§6X§(this.§0m§,-param1);
         }
         else if(this.mCurrentAction == §<!N§)
         {
            this.§'"C§ = true;
         }
         else if(this.mCurrentAction == § "2§)
         {
            this.§'";§(param1);
         }
      }
      
      public function §["§(param1:Number) : void
      {
         if(this.§`"C§)
         {
            this.§-"D§ = this.§`"C§.x;
            this.§,5§ = this.§`"C§.y;
            §<"E§ = §8! § / (this.§`"C§.right - this.§`"C§.left);
         }
         else
         {
            this.§!?§();
            this.§=!!§(param1);
            this.§-l§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§@"U§();
         this.§"P§();
         this.§0!u§();
      }
      
      private function §6!f§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%!z§.scale + (this.§+!g§.scale - this.§%!z§.scale) * param1;
         var _loc4_:Number = this.§%!z§.x + (this.§+!g§.x - this.§%!z§.x) * param1;
         var _loc5_:Number = this.§%!z§.y + (this.§+!g§.y - this.§%!z§.y) * param1;
         this.§+l§.x -= (this.§+l§.x - _loc4_) * param2;
         this.§+l§.y -= (this.§+l§.y - _loc5_) * param2;
         this.§+l§.scale -= (this.§+l§.scale - _loc3_) * param2;
      }
      
      protected function §1!C§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§&&§ != 0)
         {
            if(!this.§'"C§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §-5§;
            this.§6!f§(_loc3_,param2);
            this.§-"D§ = this.§+l§.x;
            this.§,5§ = this.§+l§.y;
            §<"E§ = this.§+l§.scale;
         }
      }
      
      public function §-l§(param1:Number, param2:Number) : void
      {
         var _loc5_:§[!8§ = null;
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
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §-5§)
         {
            this.§'"C§ = true;
         }
         if(this.mCurrentAction == §<!N§)
         {
            if(!this.mLevelMain.activeObject)
            {
               this.§5"@§(§',§);
               this.§ "'§ = §``§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.mLevelMain.activeObject).getBody().GetPosition().x + (!!_loc5_.§8!N§ ? _loc5_.§8!N§ * §'!S§.§2"<§ : 0);
               _loc7_ = _loc5_.getBody().GetPosition().y + (!!_loc5_.§?!>§ ? _loc5_.§?!>§ * §'!S§.§2"<§ : 0);
               if((_loc8_ = _loc5_.getBody().GetLinearVelocity().x) > 0 && this.§&&§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§&&§ * §-5§;
               }
               if(param1 >= §-5§)
               {
                  param1 = §-5§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §-5§;
               this.§6!f§(_loc9_,_loc4_);
               _loc10_ = this.§+l§.x - §8! § * 0.5 / this.§+l§.scale;
               _loc11_ = this.§+l§.y - §,",§ * 0.5 / this.§+l§.scale;
               _loc12_ = this.§+l§.x + §8! § * 0.5 / this.§+l§.scale;
               _loc13_ = this.§+l§.y + §,",§ * 0.5 / this.§+l§.scale;
               _loc14_ = 150 * §'!S§.§2"<§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§`"E§,_loc15_);
               _loc17_ = Math.min(this.§^z§,_loc17_);
               _loc19_ = Math.abs(§8! § / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§,",§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§+l§.scale)
               {
                  _loc21_ = this.§+l§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §8! § * 0.5 / _loc21_ > this.§^z§)
               {
                  _loc15_ = (_loc17_ = this.§^z§) - §8! § / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§`"E§)
                  {
                     _loc15_ = this.§`"E§;
                  }
               }
               if(_loc22_ - §8! § * 0.5 / _loc21_ < this.§`"E§)
               {
                  _loc17_ = (_loc15_ = this.§`"E§) + §8! § / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§^z§)
                  {
                     _loc17_ = this.§^z§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§8! § / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §8! § * 0.5 / _loc21_ < this.§8"D§)
               {
                  _loc23_ = this.§8"D§ + §8! § * 0.5 / _loc21_;
               }
               this.§-"D§ -= (this.§-"D§ - _loc22_) * _loc4_;
               this.§!"6§ -= (this.§!"6§ - _loc21_) * _loc4_;
               §<"E§ = this.§!"6§;
               this.§,5§ -= (this.§,5§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§^z§ || _loc6_ <= this.§`"E§)
               {
                  this.§+l§.scale = §<"E§;
                  this.§+l§.x = this.§-"D§;
                  this.§+l§.y = this.§,5§;
               }
            }
         }
         else
         {
            this.§1!C§(param1,_loc4_);
         }
      }
      
      public function §#W§(param1:Number, param2:Number) : void
      {
         this.§#"§ = param1;
         this.§[P§ = param2;
      }
      
      private function §]!=§(param1:§@&§, param2:§5!;§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §[!M§ + (param2.scale - §[!M§) * this.§4`§ * §"l§.§0N§();
         if(§8! § / param1.scale > this.§^z§ - this.§`"E§)
         {
            _loc3_ = §8! § / (this.§^z§ - this.§`"E§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §,!S§(param1:§@&§, param2:§5!;§) : Boolean
      {
         var _loc3_:Boolean = this.§]!=§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §,",§ * 0.5 / param1.scale;
         var _loc5_:Number = §,",§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §8! § * 0.5 / param1.scale) < this.§`"E§ && param1.§<!2§)
         {
            param1.x += this.§`"E§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §8! § * 0.5 / param1.scale) > this.§^z§ && !param1.§<!2§)
         {
            param1.x += this.§^z§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §%!l§(param1:§@&§, param2:§5!;§) : Number
      {
         return (param1.scale - §[!M§) / (§"l§.§0N§() * (param2.scale - §[!M§));
      }
      
      protected function §!?§() : void
      {
         this.§,!S§(this.§%!z§,this.§0m§);
         var _loc1_:Number = this.§%!l§(this.§%!z§,this.§0m§);
         this.§,!S§(this.§+!g§,this.§8">§);
         var _loc2_:Number = this.§%!l§(this.§+!g§,this.§8">§);
         this.§4`§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §@"U§() : void
      {
         var _loc1_:Number = NaN;
         if(this.mLevelMain.sprite)
         {
            _loc1_ = §?l§.§5&§() / §?l§.§+!9§ - §?l§.§<"P§ >> 1;
            §2!N§ = this.mLevelMain.sprite.x = §'!S§.§<!@§ * ((1 - §"l§.§@!>§) / 2);
            §-"T§ = this.mLevelMain.sprite.y = _loc1_ + §'!S§.§#L§ * (1 - §"l§.§@!>§) * §>">§.§@!0§;
         }
      }
      
      public function §0!u§() : void
      {
         if(this.mLevelMain.sprite)
         {
            this.mLevelMain.sprite.scaleX = §@!>§;
            this.mLevelMain.sprite.scaleY = §@!>§;
         }
      }
      
      public function §"P§() : void
      {
         var _loc1_:Number = this.§-"D§ / §'!S§.§2"<§ + this.§#"§;
         var _loc2_:Number = this.§,5§ / §'!S§.§2"<§ + this.§[P§;
         this.§8@§ = _loc1_ - §'!S§.§<!@§ / 2 * §?l§.§+!9§ / §?l§.§,"Z§;
         this.§@";§ = _loc2_ - §'!S§.§#L§ / 2 + §>">§.§]"V§;
         if(this.mLevelMain.background)
         {
            this.mLevelMain.background.updateScrollAndScale(this.§8@§,this.§@";§);
         }
         if(this.mLevelMain.objects)
         {
            this.mLevelMain.objects.updateScrollAndScale(this.§8@§,this.§@";§);
         }
         if(this.mLevelMain.mLevelEngine)
         {
            this.drawEngineDebug();
         }
         if(this.mLevelMain.slingshot)
         {
            this.mLevelMain.slingshot.updateScrollAndScale(this.§8@§,this.§@";§);
         }
         if(this.mLevelMain.particles)
         {
            this.mLevelMain.particles.updateScrollAndScale(this.§8@§,this.§@";§);
         }
      }
      
      protected function drawEngineDebug() : void
      {
         this.mLevelMain.mLevelEngine.updateScrollAndScale(this.§8@§,this.§@";§,§<"E§);
      }
      
      protected function §'"F§() : void
      {
         this.§5"@§(§ "2§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§ "'§ = -1;
         this.§'"F§();
         this.§0!#§ = this.§#&§ = this.§`7§ = param1;
         this.§6!D§ = this.§!!8§ = this.§["B§ = param2;
         this.§[t§ = 0;
         this.§+l§.x = this.§-"D§;
         this.§+l§.y = this.§,5§;
         this.§+l§.scale = §<"E§;
         this.§!"6§ = §<"E§;
         if(Math.abs(this.§+!g§.x - this.§%!z§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§-"D§ - this.§%!z§.x) / (this.§+!g§.x - this.§%!z§.x) * §-5§;
         }
         this.mDragging = true;
      }
      
      public function §'";§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§[t§ += param1;
         var _loc3_:Number = this.§0!#§ - this.§#&§;
         if(this.§&&§ > 0)
         {
            _loc2_ -= _loc3_ * §'!S§.§2"<§ / §@!>§ / this.§&&§ * §-5§;
            this.§'"C§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§'"C§ = true;
            }
            if(_loc2_ > §-5§)
            {
               _loc2_ += (§-5§ - _loc2_) * 0.3;
               this.§'"C§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§#&§ = this.§0!#§;
      }
      
      protected function §2Q§() : Boolean
      {
         return this.mCurrentAction == § "2§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§0!#§ = param1;
            this.§6!D§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == § "2§)
         {
            this.§5"@§(§ !c§);
            if(param1 > 0)
            {
               this.§0!#§ = param1;
            }
            _loc3_ = Math.abs(this.§0!#§ - this.§`7§);
            if(this.§[t§ < §;"1§ && _loc3_ >= §4o§ && _loc3_ >= §>d§ * this.§[t§ / 1000)
            {
               if(this.§0!#§ < this.§`7§)
               {
                  this.§5"@§(§',§);
               }
               else
               {
                  this.§5"@§(§9!E§);
               }
               this.§ "R§ = _loc3_ / this.§[t§ * 10;
               this.§'"C§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§'"C§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §-5§)
               {
                  this.§'"C§ = true;
               }
            }
            else if(this.§[t§ < §9!c§)
            {
               this.§1!A§();
               this.§ "R§ = §-5§ / (§-5§ / 500);
               this.§'"C§ = true;
            }
            else
            {
               this.§'";§(0);
               this.§9<§(0);
               this.§ "R§ = §-5§ / (§-5§ / 500);
               this.§'"C§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §1!A§() : void
      {
         if(this.mCurrentAction == §',§)
         {
            this.§5"@§(§9!E§);
         }
         else if(this.mCurrentAction == §9!E§)
         {
            this.§5"@§(§',§);
         }
         else if(this.mCurrentCameraSliderLocation >= §-5§ / 2)
         {
            this.§5"@§(§9!E§);
         }
         else if(this.mCurrentCameraSliderLocation <= §-5§ / 2)
         {
            this.§5"@§(§',§);
         }
      }
      
      public function §9<§(param1:int) : void
      {
         this.§ "'§ = param1;
         if(this.mCurrentCameraSliderLocation < §-5§ / 2)
         {
            this.§5"@§(§9!E§);
         }
         else
         {
            this.§5"@§(§',§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§5"@§(§9!E§);
      }
      
      public function goToCastleView() : void
      {
         this.§5"@§(§',§);
      }
      
      public function §5"@§(param1:int) : void
      {
         this.§+l§.x = this.§-"D§;
         this.§+l§.y = this.§,5§;
         this.§+l§.scale = §<"E§;
         this.§!"6§ = §<"E§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §-5§)
         {
            return true;
         }
         if(this.mCurrentAction == §',§)
         {
            return true;
         }
         return false;
      }
      
      public function §%!J§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §9!E§)
         {
            return true;
         }
         return false;
      }
      
      public function §4!^§(param1:§1S§) : void
      {
         this.§`"C§ = param1;
         if(this.§`"C§ != null)
         {
            this.§'f§ = new §1S§();
            this.§'f§.x = this.§-"D§;
            this.§'f§.y = this.§,5§;
            this.§'f§.scale = §<"E§;
         }
         else
         {
            this.§-"D§ = this.§'f§.x;
            this.§,5§ = this.§'f§.y;
            §<"E§ = this.§'f§.scale;
            this.§'f§ = null;
         }
      }
      
      protected function § !@§() : void
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
         var _loc3_:Number = this.§4`§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§"!?§,Math.min(this.§["C§,_loc3_));
         if(_loc3_ != this.§4`§)
         {
            this.§4`§ = _loc3_;
            this.§ !@§();
         }
      }
      
      public function §>!U§() : Number
      {
         return (this.§=!r§ - this.§"!?§) / (this.§["C§ - this.§"!?§);
      }
      
      public function §?"P§(param1:Number) : void
      {
         this.§=!r§ = Math.min(Math.max(param1,0),1) * (this.§["C§ - this.§"!?§) + this.§"!?§;
      }
      
      public function §`!+§() : void
      {
         this.§4`§ = Math.max(this.§4`§ - 0.5,0.5);
      }
      
      public function §9!%§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§4`§;
         _loc1_ += " mXcenterB2: " + this.§-"D§;
         _loc1_ += " mYcenterB2: " + this.§,5§;
         _loc1_ += " mXcenterB2target: " + this.§4`§;
         _loc1_ += "\n mYcenterB2target: " + this.§4`§;
         _loc1_ += " mXcenterB2previous: " + this.§4`§;
         _loc1_ += " mYcenterB2previous: " + this.§4`§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§4`§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§4`§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§4`§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§4`§;
         _loc1_ += " mTargetScale: " + this.§4`§;
         _loc1_ += " mTargetScalePrevious: " + this.§4`§;
         _loc1_ += " mCastleCameraX: " + this.§4`§;
         _loc1_ += "\n mCastleCameraY: " + this.§4`§;
         _loc1_ += " mCastleCameraScale: " + this.§4`§;
         _loc1_ += " mBirdCameraX: " + this.§4`§;
         _loc1_ += " mBirdCameraY: " + this.§4`§;
         _loc1_ += " mBirdCameraScale: " + this.§4`§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§4`§;
         _loc1_ += " mScreenTopScroll: " + this.§4`§;
         _loc1_ += " mDragging: " + this.§4`§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§4`§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§4`§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§4`§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§4`§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§4`§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§4`§;
         _loc1_ += " mDraggingTimer: " + this.§4`§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§4`§;
         _loc1_ += " mCameraBorderRight: " + this.§4`§;
         _loc1_ += " mCameraBorderSky: " + this.§4`§;
         _loc1_ += " mCameraBorderGround: " + this.§4`§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§4`§ + "\n ");
      }
      
      public function §;!s§() : Number
      {
         return this.§-"D§;
      }
      
      public function §!"G§() : Number
      {
         return this.§,5§;
      }
   }
}
