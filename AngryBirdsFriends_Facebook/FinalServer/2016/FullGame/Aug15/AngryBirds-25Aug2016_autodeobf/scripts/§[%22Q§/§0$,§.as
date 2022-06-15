package §["Q§
{
   import §!x§.§4"d§;
   import §#v§.§-"R§;
   import §#v§.§8i§;
   import §52§.§#!,§;
   import §?§.§>"$§;
   import §[#a§.§="@§;
   
   public class §0$,§
   {
      
      public static const §>c§:Number = 1.25;
      
      public static const §"#I§:Number = 0.15;
      
      public static const §+#s§:Number = 0.1;
      
      public static const §+a§:int = 1500;
      
      public static const §;#j§:int = 10;
      
      public static const §]"w§:int = 15;
      
      public static const §'a§:int = 300;
      
      public static const §5$,§:int = 1000;
      
      public static const §&g§:int = 10000;
      
      public static const §>!w§:int = §&g§ / 50;
      
      public static const ACTION_NONE:int = 0;
      
      public static const §-"#§:int = 1;
      
      public static const §6S§:int = 2;
      
      public static const §>n§:int = 3;
      
      public static const §1%§:int = 4;
      
      public static const §7"x§:int = 5;
      
      public static const §##x§:String = §8i§.CASTLE;
      
      public static const §@"'§:String = §8i§.SLINGSHOT;
      
      protected static var §^!B§:Number;
      
      public static const §0a§:Number = 2000;
       
      
      protected var §[E§:Number = 1.0;
      
      protected var §'v§:Number = 0.2;
      
      protected var §`"G§:Number;
      
      protected var §%"3§:Number;
      
      protected var §2C§:Number;
      
      public var §,#2§:§#!,§;
      
      public var §'#C§:Number;
      
      public var §#"S§:Number;
      
      protected var §4R§:§-#W§;
      
      protected var §<%§:§-#W§;
      
      protected var §get §:Number;
      
      protected var §>#l§:Number;
      
      protected var §,!'§:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var §-&§:Number;
      
      protected var §[t§:Number;
      
      protected var §@"F§:Number;
      
      protected var §<" §:Number;
      
      protected var §8!5§:Number;
      
      protected var §3"k§:Number;
      
      protected var §4"[§:§6!+§;
      
      protected var §]"B§:§6!+§;
      
      protected var §%"j§:Number = 0;
      
      protected var §<#O§:Number = 0;
      
      protected var §"#^§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §7"2§:Number = 0;
      
      public var §,#W§:Boolean = true;
      
      public var §3#X§:Number = 0;
      
      public var §5"k§:Number = 0;
      
      public var §;#p§:Number = 0;
      
      public var §%#X§:Number = 0;
      
      public var §6"k§:Number = 0;
      
      public var §-S§:Number = 0;
      
      public var §>!g§:Number = 0;
      
      public var §3!y§:Number = 0;
      
      public var §`"Q§:Number = 0;
      
      private var §&U§:§6!+§;
      
      public var §`!q§:Number = 0;
      
      private var §""+§:Number = 0;
      
      private var §7"=§:Number = 0;
      
      private var §1"9§:§8i§ = null;
      
      private var §4"F§:§8i§ = null;
      
      public function §0$,§(param1:§#!,§, param2:§-"R§, param3:Number = 1.0)
      {
         this.§&U§ = new §6!+§(0,0,1,false);
         super();
         this.§%"3§ = 0;
         this.§2C§ = 0;
         this.§,#2§ = param1;
         §0$,§.§^!B§ = 1;
         this.§[E§ = Math.max(1,Math.min(2,param3));
         this.§`"G§ = this.§0=§;
         this.§>!r§(param2);
         if(this.§4R§ && this.§<%§)
         {
            this.loadCameraBorders();
            this.§%"j§ = this.§4R§.x - this.§<%§.x;
            this.§<#O§ = this.§4R§.y - this.§<%§.y;
            this.§"#^§ = this.§4R§.scale - this.§<%§.scale;
            this.§%"3§ = this.§4R§.x;
            this.§2C§ = this.§4R§.y;
            §^!B§ = this.§4R§.scale * this.§`"G§;
         }
         this.mCurrentCameraSliderLocation = §&g§;
         this.§,#W§ = true;
         this.§7"2§ = §&g§ / 500;
      }
      
      public static function get §,4§() : Number
      {
         return §>"$§.§ "+§ * §#!,§.§?$#§;
      }
      
      public static function get §'!@§() : Number
      {
         return §>"$§.§&#-§ * §#!,§.§?$#§;
      }
      
      public static function get §`#1§() : Number
      {
         var _loc1_:Number = §>"$§.§;!m§ / §>"$§.§`G§;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return §^!B§ * _loc1_ * _loc1_;
      }
      
      public function get §5,§() : Number
      {
         return this.§`"G§;
      }
      
      public function set §5,§(param1:Number) : void
      {
         this.§`"G§ = param1;
      }
      
      public function §5#@§() : Number
      {
         return §,4§ / (this.§<" § - this.§@"F§);
      }
      
      public function get §0=§() : Number
      {
         var _loc1_:Number = §>"$§.§;!m§ / §>"$§.§`G§;
         return this.§[E§ / _loc1_;
      }
      
      public function get §8#V§() : Number
      {
         return this.§'v§;
      }
      
      public function get §##D§() : Number
      {
         return this.§get §;
      }
      
      public function get §^"a§() : Number
      {
         return this.§>#l§;
      }
      
      public function get borderLeft() : Number
      {
         return this.§@"F§;
      }
      
      public function get borderRight() : Number
      {
         return this.§<" §;
      }
      
      public function get centerX() : Number
      {
         return this.§-&§;
      }
      
      public function get §0!#§() : Number
      {
         return this.§[t§;
      }
      
      public function get §%Z§() : Number
      {
         return this.§<" § - this.§@"F§;
      }
      
      protected function get §=!=§() : §-#W§
      {
         return this.§4R§;
      }
      
      public function §=!x§(param1:Number) : void
      {
         this.§`"G§ = param1;
         this.§!"`§();
         this.§&!k§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §7"x§)
         {
            return;
         }
         this.goToCastleView();
         this.§3#X§ = 2000;
         this.§0"y§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§%"3§ = this.§<%§.x;
         this.§2C§ = this.§<%§.y;
         this.§,#W§ = false;
         this.§7"2§ = §&g§ / 160000 * param1;
         this.setAction(§7"x§);
      }
      
      public function loadCameraBorders() : void
      {
         var _loc1_:Number = (this.§4R§.x - this.§<%§.x) / 1.6;
         if(_loc1_ < §,4§ * 1.2)
         {
            _loc1_ = §,4§ * 1.2;
         }
         this.§@"F§ = this.§<%§.x - _loc1_;
         this.§<" § = this.§4R§.x + _loc1_;
         this.§8!5§ = Math.min(this.§4R§.y,this.§<%§.y) - §'!@§;
         this.§3"k§ = Math.max(this.§4R§.y,this.§<%§.y) + §'!@§;
         this.§-&§ = (this.§4R§.x + this.§<%§.x) / 2;
         this.§[t§ = (this.§4R§.y + this.§<%§.y) / 2;
      }
      
      public function clear() : void
      {
         this.§,#2§ = null;
      }
      
      public function §>!r§(param1:§-"R§) : void
      {
         var _loc3_:§8i§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§@"+§)
         {
            _loc3_ = param1.§7!Q§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§5"#§(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.§9#e§(_loc3_);
            if(_loc4_ == §@"'§)
            {
               this.§<%§ = new §-#W§(_loc5_,_loc6_,_loc7_,true);
               this.§]"B§ = new §6!+§(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == §##x§)
            {
               this.§4R§ = new §-#W§(_loc5_,_loc6_,_loc7_,false);
               this.§4"[§ = new §6!+§(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               §4"d§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function §9#e§(param1:§8i§) : Number
      {
         var _loc2_:Number = §'!@§ / (param1.bottom - param1.top);
         var _loc3_:Number = §,4§ / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function §]w§(param1:§-"R§) : void
      {
         var _loc2_:§8i§ = new §8i§();
         _loc2_.id = §@"'§;
         _loc2_.x = this.§<%§.x;
         _loc2_.y = this.§<%§.y;
         var _loc3_:Number = §,4§ / this.§<%§.scale / 2;
         var _loc4_:Number = §'!@§ / this.§<%§.scale / 2;
         _loc2_.left = this.§<%§.x - _loc3_;
         _loc2_.right = this.§<%§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         _loc2_.scale = this.§<%§.scale;
         var _loc5_:§8i§;
         (_loc5_ = new §8i§()).id = §##x§;
         _loc5_.x = this.§4R§.x;
         _loc5_.y = this.§4R§.y;
         var _loc6_:Number = §,4§ / this.§4R§.scale / 2;
         var _loc7_:Number = §'!@§ / this.§4R§.scale / 2;
         _loc5_.left = this.§4R§.x - _loc6_;
         _loc5_.right = this.§4R§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         _loc5_.scale = this.§4R§.scale;
         param1.§0![§();
         param1.§2#]§(_loc2_);
         param1.§2#]§(_loc5_);
      }
      
      public function §5"#§(param1:§8i§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §>"$§.§ "+§ * 0.5 / _loc2_ * §#!,§.§?$#§;
         var _loc4_:Number = param1.y - §>"$§.§&#-§ * 0.5 / _loc2_ * §#!,§.§?$#§;
         var _loc5_:Number = _loc3_ + §>"$§.§ "+§ / _loc2_ * §#!,§.§?$#§;
         var _loc6_:Number = _loc4_ + §>"$§.§&#-§ / _loc2_ * §#!,§.§?$#§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §4>§(param1:§-#W§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§7"2§;
         if(_loc3_ >= §&g§)
         {
            _loc3_ = §&g§;
            this.setAction(ACTION_NONE);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(ACTION_NONE);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §'#O§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§7"2§;
         var _loc4_:Number = -§&g§ * 0.7;
         if(_loc2_ >= §&g§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §&g§;
            }
            this.§7"2§ = -this.§7"2§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §2!f§(param1:Number) : void
      {
         if(this.mCurrentAction == §7"x§)
         {
            this.§'#O§(param1);
         }
         else if(this.mCurrentAction == §-"#§)
         {
            this.§4>§(this.§4R§,param1);
         }
         else if(this.mCurrentAction == §6S§)
         {
            this.§4>§(this.§<%§,-param1);
         }
         else if(this.mCurrentAction == §>n§)
         {
            this.§,#W§ = true;
         }
         else if(this.mCurrentAction == §1%§)
         {
            this.§4i§(param1);
         }
      }
      
      public function §0!h§(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.§1"9§)
         {
            this.§%"3§ = this.§1"9§.x;
            this.§2C§ = this.§1"9§.y;
            §^!B§ = §,4§ / (this.§1"9§.right - this.§1"9§.left);
         }
         else
         {
            this.§!"`§();
            this.§2!f§(param1);
            if(Math.abs(this.§,!'§ - §>"$§.§;!m§ / §>"$§.§`G§) > 0.01)
            {
               param1 = 1000;
            }
            this.§^l§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§0"y§();
         this.§,!'§ = §>"$§.§;!m§ / §>"$§.§`G§;
      }
      
      private function §4$!§(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.§4"[§.x - this.§]"B§.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.§]"B§.scale + (this.§4"[§.scale - this.§]"B§.scale) * param1;
         var _loc4_:Number = this.§]"B§.x + (this.§4"[§.x - this.§]"B§.x) * param1;
         var _loc5_:Number = this.§]"B§.y + (this.§4"[§.y - this.§]"B§.y) * param1;
         this.§&U§.x -= (this.§&U§.x - _loc4_) * param2;
         this.§&U§.y -= (this.§&U§.y - _loc5_) * param2;
         this.§&U§.scale -= (this.§&U§.scale - _loc3_) * param2;
         this.§<"`§(this.§&U§);
      }
      
      protected function §&!k§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§%"j§ != 0)
         {
            if(!this.§,#W§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §&g§;
            this.§4$!§(_loc3_,param2);
            this.§%"3§ = this.§&U§.x;
            this.§2C§ = this.§&U§.y;
            §^!B§ = this.§&U§.scale;
         }
      }
      
      private function §-$;§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:§="@§;
         var _loc5_:Number = (_loc4_ = this.§,#2§.levelObjects.activeObject).§?#j§();
         var _loc6_:Number = _loc4_.§;#S§();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.getBody().GetLinearVelocity().x) > 0 && this.§%"j§ != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.§%"j§ * §&g§;
         }
         if(param1 >= §&g§)
         {
            param1 = §&g§;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / §&g§;
         this.§4$!§(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = §>"$§.§;!m§ / §>"$§.§`G§) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.§&U§.x - §,4§ / _loc9_ * 0.5 / this.§&U§.scale;
         var _loc11_:Number = this.§&U§.y - §'!@§ * 0.5 / this.§&U§.scale;
         var _loc12_:Number = this.§&U§.x + §,4§ / _loc9_ * 0.5 / this.§&U§.scale;
         var _loc13_:Number = this.§&U§.y + §'!@§ * 0.5 / this.§&U§.scale;
         var _loc14_:Number = 150 * §#!,§.§?$#§;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.§@"F§,_loc15_);
         _loc17_ = Math.min(this.§<" §,_loc17_);
         var _loc19_:Number = Math.abs(§,4§ / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(§'!@§ / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§&U§.scale)
         {
            _loc21_ = this.§&U§.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + §,4§ / _loc9_ * 0.5 / _loc21_ > this.§<" §)
         {
            _loc15_ = (_loc17_ = this.§<" §) - §,4§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.§@"F§)
            {
               _loc15_ = this.§@"F§;
            }
         }
         if(_loc22_ - §,4§ / _loc9_ * 0.5 / _loc21_ < this.§@"F§)
         {
            _loc17_ = (_loc15_ = this.§@"F§) + §,4§ / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.§<" §)
            {
               _loc17_ = this.§<" §;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(§,4§ / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - §'!@§ * 0.5 < this.§8!5§)
         {
            _loc23_ = this.§8!5§ + §'!@§ * 0.5;
         }
         if(_loc23_ + §'!@§ * 0.5 > this.§3"k§)
         {
            _loc23_ = this.§3"k§ - §'!@§ * 0.5;
         }
         this.§%"3§ -= (this.§%"3§ - _loc22_) * param3;
         this.§`!q§ -= (this.§`!q§ - _loc21_) * param3;
         §^!B§ = this.§`!q§;
         this.§2C§ -= (this.§2C§ - _loc23_) * param3;
         if(_loc5_ >= this.§<" § || _loc5_ <= this.§@"F§)
         {
            this.§&U§.scale = §^!B§;
            this.§&U§.x = this.§%"3§;
            this.§&U§.y = this.§2C§;
         }
      }
      
      protected function §^l§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §&g§)
         {
            this.§,#W§ = true;
         }
         if(this.mCurrentAction == §>n§)
         {
            if(!this.§,#2§.levelObjects.activeObject)
            {
               this.setAction(§-"#§);
               this.§`"Q§ = §5$,§;
            }
            else
            {
               this.§-$;§(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.§&!k§(param1,_loc4_);
         }
      }
      
      public function §=#[§(param1:Number, param2:Number) : void
      {
         this.§""+§ = param1;
         this.§7"=§ = param2;
      }
      
      protected function §3#T§(param1:§6!+§, param2:§-#W§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §>"$§.§;!m§ / §>"$§.§`G§;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = §"#I§ + (param2.scale - §"#I§) * this.§5,§;
         if(§,4§ / param1.scale > (this.§<" § - this.§@"F§) * _loc3_)
         {
            _loc4_ = §,4§ / ((this.§<" § - this.§@"F§) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function §>!b§(param1:§6!+§, param2:§-#W§) : Boolean
      {
         var _loc3_:Boolean = this.§3#T§(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.§<"`§(param1);
         return _loc3_;
      }
      
      private function §<"`§(param1:§6!+§) : void
      {
         var _loc2_:Number = §>"$§.§;!m§ / §>"$§.§`G§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - §,4§ / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.§@"F§)
         {
            param1.x += this.§@"F§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + §,4§ / _loc2_ * 0.5 / param1.scale) > this.§<" §)
         {
            param1.x += this.§<" § - _loc4_;
         }
      }
      
      private function §0#+§(param1:§6!+§, param2:§-#W§) : Number
      {
         return (param1.scale - §"#I§) / (param2.scale - §"#I§);
      }
      
      protected function §!"`§() : void
      {
         this.§>!b§(this.§]"B§,this.§<%§);
         var _loc1_:Number = this.§0#+§(this.§]"B§,this.§<%§);
         this.§>!b§(this.§4"[§,this.§4R§);
         var _loc2_:Number = this.§0#+§(this.§4"[§,this.§4R§);
         this.§`"G§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §0"y§() : void
      {
         var _loc1_:Number = this.§%"3§ / §#!,§.§?$#§ + this.§""+§;
         var _loc2_:Number = this.§2C§ / §#!,§.§?$#§ + this.§7"=§;
         var _loc3_:Number = §>"$§.§;!m§;
         var _loc4_:Number = §>"$§.§`G§;
         var _loc5_:Number = §#!,§.§%"9§ * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = §#!,§.§`"V§;
         this.§get § = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.§>#l§ = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.§get § += _loc5_ / 2 - _loc5_ / 2 / §`#1§;
         this.§>#l§ += (_loc6_ / 2 - _loc6_ / 2 / §`#1§) / (_loc3_ / _loc4_);
         this.§,#2§.setScreenOffset(this.§get §,this.§>#l§,§`#1§);
      }
      
      protected function §7"u§() : void
      {
         this.setAction(§1%§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§`"Q§ = -1;
         this.§7"u§();
         this.§6"k§ = this.§>!g§ = this.§;#p§ = param1;
         this.§-S§ = this.§3!y§ = this.§%#X§ = param2;
         this.§5"k§ = 0;
         this.§&U§.x = this.§%"3§;
         this.§&U§.y = this.§2C§;
         this.§&U§.scale = §^!B§;
         this.§`!q§ = §^!B§;
         if(Math.abs(this.§4"[§.x - this.§]"B§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§%"3§ - this.§]"B§.x) / (this.§4"[§.x - this.§]"B§.x) * §&g§;
         }
         this.mDragging = true;
      }
      
      public function §4i§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§5"k§ += param1;
         var _loc3_:Number = this.§6"k§ - this.§>!g§;
         if(this.§%"j§ > 0)
         {
            _loc2_ -= _loc3_ * §#!,§.§?$#§ / §`#1§ / this.§%"j§ * §&g§;
            this.§,#W§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§,#W§ = true;
            }
            if(_loc2_ > §&g§)
            {
               _loc2_ += (§&g§ - _loc2_) * 0.3;
               this.§,#W§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§>!g§ = this.§6"k§;
      }
      
      protected function §@C§() : Boolean
      {
         return this.mCurrentAction == §1%§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§6"k§ = param1;
            this.§-S§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §1%§)
         {
            this.setAction(ACTION_NONE);
            if(param1 > 0)
            {
               this.§6"k§ = param1;
            }
            _loc3_ = Math.abs(this.§6"k§ - this.§;#p§);
            if(this.§5"k§ < §+a§ && _loc3_ >= §;#j§ && _loc3_ >= §]"w§ * this.§5"k§ / 1000)
            {
               if(this.§6"k§ < this.§;#p§)
               {
                  this.setAction(§-"#§);
               }
               else
               {
                  this.setAction(§6S§);
               }
               this.§7"2§ = _loc3_ / this.§5"k§ * 10;
               this.§,#W§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§,#W§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §&g§)
               {
                  this.§,#W§ = true;
               }
            }
            else if(this.§5"k§ < §'a§)
            {
               this.§'"%§();
               this.§7"2§ = §&g§ / (§&g§ / 500);
               this.§,#W§ = true;
            }
            else
            {
               this.§4i§(0);
               this.§!#2§(0);
               this.§7"2§ = §&g§ / (§&g§ / 500);
               this.§,#W§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §'"%§() : void
      {
         if(this.mCurrentAction == §-"#§)
         {
            this.setAction(§6S§);
         }
         else if(this.mCurrentAction == §6S§)
         {
            this.setAction(§-"#§);
         }
         else if(this.mCurrentCameraSliderLocation >= §&g§ / 2)
         {
            this.setAction(§6S§);
         }
         else if(this.mCurrentCameraSliderLocation <= §&g§ / 2)
         {
            this.setAction(§-"#§);
         }
      }
      
      public function §!#2§(param1:int) : void
      {
         this.§`"Q§ = param1;
         if(this.mCurrentCameraSliderLocation < §&g§ / 2)
         {
            this.setAction(§6S§);
         }
         else
         {
            this.setAction(§-"#§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(§6S§);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(§-"#§);
      }
      
      public function setAction(param1:int) : void
      {
         this.§&U§.x = this.§%"3§;
         this.§&U§.y = this.§2C§;
         this.§&U§.scale = §^!B§;
         this.§`!q§ = §^!B§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §&g§)
         {
            return true;
         }
         if(this.mCurrentAction == §-"#§)
         {
            return true;
         }
         return false;
      }
      
      public function §"#J§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §6S§)
         {
            return true;
         }
         return false;
      }
      
      public function §`#S§(param1:§8i§) : void
      {
         this.§1"9§ = param1;
         if(this.§1"9§ != null)
         {
            this.§4"F§ = new §8i§();
            this.§4"F§.x = this.§%"3§;
            this.§4"F§.y = this.§2C§;
            this.§4"F§.scale = §^!B§;
         }
         else
         {
            this.§%"3§ = this.§4"F§.x;
            this.§2C§ = this.§4"F§.y;
            §^!B§ = this.§4"F§.scale;
            this.§4"F§ = null;
         }
      }
      
      protected function §`D§() : void
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
         var _loc3_:Number = this.§`"G§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§8#V§,Math.min(this.§0=§,_loc3_));
         if(_loc3_ != this.§`"G§)
         {
            this.§`"G§ = _loc3_;
         }
      }
      
      public function §0!T§() : Number
      {
         return (this.§5,§ - this.§8#V§) / (this.§0=§ - this.§8#V§);
      }
      
      public function §19§(param1:Number) : void
      {
         this.§5,§ = Math.min(Math.max(param1,0),1) * (this.§0=§ - this.§8#V§) + this.§8#V§;
      }
      
      public function §"!^§() : void
      {
         this.§`"G§ = Math.max(this.§`"G§ - 0.5,0.5);
      }
      
      public function §,T§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§5,§;
         _loc1_ += " mXcenterB2: " + this.§%"3§;
         _loc1_ += " mYcenterB2: " + this.§2C§;
         _loc1_ += " mXcenterB2target: " + this.§5,§;
         _loc1_ += "\n mYcenterB2target: " + this.§5,§;
         _loc1_ += " mXcenterB2previous: " + this.§5,§;
         _loc1_ += " mYcenterB2previous: " + this.§5,§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§5,§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§5,§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§5,§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§5,§;
         _loc1_ += " mTargetScale: " + this.§5,§;
         _loc1_ += " mTargetScalePrevious: " + this.§5,§;
         _loc1_ += " mCastleCameraX: " + this.§5,§;
         _loc1_ += "\n mCastleCameraY: " + this.§5,§;
         _loc1_ += " mCastleCameraScale: " + this.§5,§;
         _loc1_ += " mBirdCameraX: " + this.§5,§;
         _loc1_ += " mBirdCameraY: " + this.§5,§;
         _loc1_ += " mBirdCameraScale: " + this.§5,§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§5,§;
         _loc1_ += "mScreenOffsetYl: " + this.§5,§;
         _loc1_ += " mDragging: " + this.§5,§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§5,§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§5,§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§5,§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§5,§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§5,§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§5,§;
         _loc1_ += " mDraggingTimer: " + this.§5,§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§5,§;
         _loc1_ += " mCameraBorderRight: " + this.§5,§;
         _loc1_ += "mCameraBorderTop: " + this.§5,§;
         _loc1_ += "mCameraBorderBottom: " + this.§5,§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§5,§ + "\n ");
      }
      
      public function §[I§(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
