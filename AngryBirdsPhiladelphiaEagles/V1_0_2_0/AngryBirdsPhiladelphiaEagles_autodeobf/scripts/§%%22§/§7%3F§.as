package §%"§
{
   import §+y§.§3V§;
   import §3M§.§;-§;
   import §;;§.§"!E§;
   import §;;§.§9"§;
   import §<!N§.§&M§;
   import §<!N§.Sprite;
   import §<!N§.§^3§;
   import §?!;§.§;!,§;
   import §@M§.Texture;
   import §@V§.§`!5§;
   import §^'§.§!!M§;
   import §^'§.§,!2§;
   import §`=§.§"R§;
   import §`=§.§?!E§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7?§
   {
      
      public static const § q§:int = 0;
      
      public static const §4!'§:int = 1;
      
      public static const §9s§:int = 2;
      
      public static const §?#§:int = 3;
      
      public static const §for §:int = 5;
      
      public static const §+§:int = 3151368;
      
      protected static const §]!<§:int = 8;
      
      protected static const §8!§:int = 0;
      
      public static const §6!K§:Number = 46.25;
      
      public static const §#k§:Number = 52.5;
      
      protected static const §>!N§:Number = -0.7;
      
      protected static const §1W§:Number = 0;
      
      protected static var §%!F§:Texture;
      
      public static const §%'§:Number = 0.4;
       
      
      public var §-H§:§ do§;
      
      public var §-o§:Number;
      
      public var §2!9§:Number;
      
      public var §7!2§:Number;
      
      protected var §^%§:Number;
      
      protected var §2-§:Number;
      
      protected var §4R§:Number;
      
      protected var §>q§:Number;
      
      public var §8!C§:Number;
      
      public var §2&§:Boolean = false;
      
      protected var §^$§:Number;
      
      public var §4D§:Vector.<§96§>;
      
      public var §=U§:int;
      
      public var §=!'§:int;
      
      public var §3R§:Number;
      
      public var §7v§:Sprite;
      
      public var §@^§:int = 0;
      
      public var §?!B§:Number = 0;
      
      public var §'_§:Array;
      
      public var §]!A§:Array;
      
      public var mSlingShotState:int;
      
      public var §!!1§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §7!P§:Boolean = false;
      
      public var §'!G§:Number;
      
      protected var §=!"§:Sprite;
      
      protected var §??§:§^3§;
      
      protected var §5x§:§^3§;
      
      protected var §=!7§:Sprite;
      
      protected var §@-§:Sprite;
      
      protected var §=!=§:Sprite;
      
      protected var §'O§:§&M§;
      
      protected var §^6§:§&M§;
      
      private var §>!>§:Number = 0;
      
      private var §9!I§:int = 0;
      
      protected var §=&§:Number = -0.7;
      
      protected var §'E§:Number = 0;
      
      public function §7?§(param1:§ do§, param2:§;!,§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§;-§ = null;
         this.§4D§ = new Vector.<§96§>();
         super();
         this.§-H§ = param1;
         this.§=!"§ = param3;
         if(param2)
         {
            this.setPosition(param2.§&9§,param2.§`K§);
            this.§=!$§();
            _loc4_ = 0;
            while(_loc4_ < param2.§-!+§)
            {
               _loc5_ = param2.§ !B§(_loc4_);
               this.§["§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§9!I§ = this.§?§();
            this.§=U§ = 0;
            if(this.§4D§.length <= 0)
            {
               §`!5§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§-o§ + " " + this.§2!9§);
               this.§'1§(§?#§);
            }
            else
            {
               this.§'1§(§ q§);
            }
         }
         else
         {
            §`!5§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§'1§(§?#§);
         }
         this.§'!G§ = 0;
         this.§"!A§();
         this.update(0,true);
         this.§0o§();
         this.§ J§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§=!"§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§>!>§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§=U§ < this.§4D§.length;
      }
      
      public function dispose() : void
      {
         while(this.§4D§.length > 0)
         {
            this.§`Z§(0);
         }
         this.§4D§ = null;
         if(this.§=!"§)
         {
            this.§=!"§.dispose();
            this.§=!"§ = null;
         }
         this.§7v§ = null;
         this.§'_§ = null;
         this.§]!A§ = null;
      }
      
      public function §';§(param1:String, param2:Number, param3:Number, param4:int = -1) : §96§
      {
         var _loc5_:§96§;
         (_loc5_ = this.§["§(param1,param2,param3,param4)).§0!+§();
         return _loc5_;
      }
      
      protected function §["§(param1:String, param2:Number, param3:Number, param4:int = -1) : §96§
      {
         var _loc5_:§96§ = new §96§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§4D§.push(_loc5_);
         }
         else
         {
            this.§4D§.splice(param4,0,_loc5_);
         }
         this.§7v§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §'1§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == § q§)
         {
            this.§,9§();
            this.§3R§ = 1000;
         }
         else if(this.mSlingShotState == §4!'§)
         {
            this.§,9§();
            this.§3R§ = 0;
         }
         else if(this.mSlingShotState == §9s§)
         {
            this.§3R§ = 10000;
            this.§7!P§ = false;
            this.§,9§();
         }
         else if(this.mSlingShotState == §?#§)
         {
            this.§,9§();
            this.§3R§ = 2000;
         }
         else if(this.mSlingShotState == §for §)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§7!P§ = false;
               this.§,9§();
               this.§4D§[this.§=U§].setPosition(this.§4R§ - this.§4D§[this.§=U§].radius * Math.cos(this.§?!B§ / (180 / Math.PI)),this.§>q§ + this.§4D§[this.§=U§].radius * Math.sin(this.§?!B§ / (180 / Math.PI)));
            }
            else
            {
               this.§,9§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §`t§() : § do§
      {
         return this.§-H§;
      }
      
      public function §7#§() : Boolean
      {
         return this.mSlingShotState == §?#§ && this.§3R§ <= 0;
      }
      
      private function §=!$§() : void
      {
         var _loc1_:§,!2§ = this.§1!?§();
         var _loc2_:§!!M§ = _loc1_.getFrame(0);
         var _loc3_:§!!M§ = _loc1_.getFrame(1);
         this.§'O§ = new §&M§(_loc2_.texture);
         this.§'O§.scaleX = _loc2_.scale;
         this.§'O§.scaleY = _loc2_.scale;
         this.§^6§ = new §&M§(_loc3_.texture);
         this.§^6§.scaleX = _loc3_.scale;
         this.§^6§.scaleY = _loc3_.scale;
         this.§;!!§();
         this.§%^§();
         this.§7v§ = new Sprite();
         this.§=!"§.addChild(this.§'O§);
         this.§=!"§.addChild(this.§=!7§);
         this.§=!"§.addChild(this.§7v§);
         this.§=!"§.addChild(this.§=!=§);
         this.§=!"§.addChild(this.§@-§);
         this.§=!"§.addChild(this.§^6§);
         this.§7!2§ = this.§2!9§ + 8.5;
      }
      
      protected function §1!?§() : §,!2§
      {
         return this.§-H§.§4i§.getAnimation("SLINGSHOT");
      }
      
      public function §;!!§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§^%§ = this.§-o§;
         this.§2-§ = this.§2!9§;
         this.§^$§ = Tuner.§&B§;
         _loc1_ = null;
      }
      
      protected function §%^§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§%!F§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §%!F§ = this.§-H§.textureManager.§7d§(_loc2_);
         }
         this.§=!=§ = new Sprite();
         var _loc1_:§&M§ = new §&M§(§%!F§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§=!=§.addChild(_loc1_);
         this.§=!7§ = new Sprite();
         this.§??§ = new §^3§(2,2,§+§);
         this.§=!7§.addChild(this.§??§);
         this.§@-§ = new Sprite();
         this.§5x§ = new §^3§(2,2,§+§);
         this.§@-§.addChild(this.§5x§);
      }
      
      public function § J§(param1:Number) : void
      {
         var _loc2_:Number = this.§>q§ / § do§.§^!I§;
         var _loc3_:Number = this.§4R§ / § do§.§^!I§;
         var _loc4_:Number = 3.5 + 8 * ((this.§^$§ - this.§8!C§) / this.§^$§);
         this.§=!=§.x = _loc3_;
         this.§=!=§.y = _loc2_;
         this.§=!=§.rotation = -this.§?!B§ / (180 / Math.PI);
         this.§'O§.x = this.§-o§ / § do§.§^!I§ - 3;
         this.§'O§.y = this.§2!9§ / § do§.§^!I§ - 30;
         this.§^6§.x = this.§-o§ / § do§.§^!I§ - 30;
         this.§^6§.y = this.§2!9§ / § do§.§^!I§ - 30;
         this.§@-§.x = this.§-o§ / § do§.§^!I§ - 17;
         this.§@-§.y = this.§2!9§ / § do§.§^!I§ + 5;
         this.§@-§.rotation = Math.atan2(_loc2_ - this.§@-§.y,_loc3_ - this.§@-§.x);
         this.§=!7§.x = this.§-o§ / § do§.§^!I§ + 22;
         this.§=!7§.y = this.§2!9§ / § do§.§^!I§;
         this.§=!7§.rotation = Math.atan2(_loc2_ - this.§=!7§.y,_loc3_ - this.§=!7§.x);
         this.§5x§.width = Math.sqrt(Math.pow(_loc3_ - this.§@-§.x,2) + Math.pow(_loc2_ - this.§@-§.y,2));
         this.§??§.width = Math.sqrt(Math.pow(_loc3_ - this.§=!7§.x,2) + Math.pow(_loc2_ - this.§=!7§.y,2));
         this.§5x§.height = this.§??§.height = _loc4_ * 2;
         this.§5x§.y = -this.§5x§.height / 2;
         this.§??§.y = -this.§??§.height / 2;
         this.§!!1§ = false;
      }
      
      public function §>_§() : void
      {
         while(this.§4D§.length > 0)
         {
            this.§`Z§(0,true);
         }
         this.§2!O§();
         this.§["§("BIRD_SARDINE",this.§-o§,this.§2!9§);
         this.§'1§(§9s§);
      }
      
      protected function §2!O§() : void
      {
         §3V§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§'1§(§for §);
      }
      
      public function §,9§() : void
      {
         this.setNewCoordinatesForRubber(this.§^%§,this.§2-§ + this.§^$§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§4R§ == param1 && this.§>q§ == param2)
         {
            return true;
         }
         this.§8!C§ = Math.sqrt((param2 - this.§2-§) * (param2 - this.§2-§) + (param1 - this.§^%§) * (param1 - this.§^%§));
         if(this.§8!C§ > this.§^$§)
         {
            if(param3)
            {
               this.§8!C§ = Math.sqrt((this.§>q§ - this.§2-§) * (this.§>q§ - this.§2-§) + (this.§4R§ - this.§^%§) * (this.§4R§ - this.§^%§));
               return false;
            }
            param1 = this.§^%§ + this.§^$§ * (param1 - this.§^%§) / this.§8!C§;
            param2 = this.§2-§ + this.§^$§ * (param2 - this.§2-§) / this.§8!C§;
            this.§8!C§ = this.§^$§;
         }
         this.§4R§ = param1;
         this.§>q§ = param2;
         this.§?!B§ = Math.atan2(-(this.§>q§ - this.§2-§),this.§4R§ - this.§^%§);
         this.§?!B§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§4R§ = param1 + this.§=&§;
            this.§>q§ = param2 + this.§'E§;
            this.§?!B§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§^$§ / 2;
         if(this.§8!C§ > _loc7_ && this.§?!B§ > -90 - _loc4_ + _loc5_ && this.§?!B§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§^%§ + _loc7_ * (param1 - this.§^%§) / this.§8!C§;
            param2 = this.§2-§ + _loc7_ * (param2 - this.§2-§) / this.§8!C§;
            this.§8!C§ = _loc7_;
            this.§4R§ = param1;
            this.§>q§ = param2;
         }
         else if(this.§8!C§ > _loc7_ && this.§?!B§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§?!B§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§^$§ - _loc7_) * (Math.abs(this.§?!B§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§^%§ + _loc8_ * (param1 - this.§^%§) / this.§8!C§;
            param2 = this.§2-§ + _loc8_ * (param2 - this.§2-§) / this.§8!C§;
            this.§8!C§ = _loc8_;
            this.§4R§ = param1;
            this.§>q§ = param2;
         }
         if(this.§8!C§ <= this.§^$§ * 0.45)
         {
            this.§2&§ = true;
         }
         else if(this.§2&§ && this.§8!C§ >= this.§^$§ * 0.8)
         {
            this.§"!F§();
            this.§2&§ = false;
         }
         this.§!!1§ = true;
         return true;
      }
      
      protected function §"!F§() : void
      {
         §3V§.playSound("SlingshotStreched");
      }
      
      public function §,!E§(param1:Number) : void
      {
         this.setPosition(this.§-o§,this.§2!9§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§-o§;
         this.§-o§ = param1;
         var _loc5_:Number = param2 - this.§2!9§;
         this.§2!9§ = param2;
         this.§7!2§ += _loc5_;
         this.§2-§ += _loc5_;
         this.§>q§ += _loc5_;
         this.§^%§ += _loc4_;
         this.§4R§ += _loc4_;
         if(param3)
         {
            this.§ J§(0);
         }
         this.§!!1§ = true;
      }
      
      public function §5]§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§96§ = null;
         _loc2_ = this.§4D§[this.§=U§];
         var _loc3_:Number = this.§8!C§ / this.§^$§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§7?§.§#k§) : Number(§7?§.§6!K§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §?-§() : Point
      {
         var _loc1_:§96§ = null;
         if(this.§4D§.length > this.§=U§)
         {
            _loc1_ = this.§4D§[this.§=U§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §&X§() : Point
      {
         return new Point(this.§^%§,this.§2-§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§96§ = null;
         this.§4!B§(param1);
         if(this.§!!1§)
         {
            this.§ J§(param1);
         }
         this.§3R§ -= param1;
         if(this.§3R§ < 0)
         {
            this.§3R§ = 0;
         }
         if(this.mSlingShotState != §?#§)
         {
            this.§0!0§(param1,param2);
            _loc3_ = null;
            if(this.§4D§.length > 0)
            {
               _loc3_ = this.§4D§[this.§=U§];
            }
            if(_loc3_)
            {
               _loc3_.§0j§(param1);
            }
            if(!_loc3_)
            {
               this.§'1§(§?#§);
            }
            else if(this.mSlingShotState == § q§)
            {
               if(this.§3R§ <= 0)
               {
                  this.§'1§(§4!'§);
                  _loc3_.§]c§();
               }
            }
            else if(this.mSlingShotState == §4!'§)
            {
               if(_loc3_.§[j§)
               {
                  this.§'1§(§9s§);
               }
            }
            else if(this.mSlingShotState == §9s§)
            {
               _loc3_.setPosition(this.§4R§ - _loc3_.radius * Math.cos(this.§?!B§ / (180 / Math.PI)),this.§>q§ + _loc3_.radius * Math.sin(this.§?!B§ / (180 / Math.PI)));
               if(this.§7!P§)
               {
                  this.§,P§(this.§8!C§ / this.§^$§,this.§?!B§);
               }
            }
         }
      }
      
      public function §^!-§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§96§ = null;
         if(this.§4D§.length > 0)
         {
            _loc5_ = this.§4D§[this.§=U§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§,P§(param3,param4);
      }
      
      protected function §,P§(param1:Number, param2:Number) : void
      {
         var _loc3_:§96§ = null;
         this.§=&§ = §>!N§;
         this.§'E§ = §1W§;
         if(this.§4D§.length > 0)
         {
            _loc3_ = this.§4D§[this.§=U§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§7!P§ = false;
         this.§>!>§ = new Date().time;
         this.§-H§.shootBird(_loc3_,param1,param2);
         this.§`Z§(this.§=U§,_loc3_.§5&§ > 0);
         this.§4H§();
         if(this.§=U§ >= this.§4D§.length)
         {
            this.§'1§(§?#§);
         }
         else
         {
            this.§'1§(§ q§);
         }
      }
      
      protected function §4H§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §3V§.playSound("BirdShot" + _loc1_);
      }
      
      public function §0!0§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§=U§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§4D§.length)
         {
            if(this.mSlingShotState == §for §)
            {
               this.§4D§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§4D§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§96§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§,9§();
         if(this.§=!'§ >= this.§4D§.length)
         {
            return false;
         }
         _loc1_ = this.§4D§[this.§=!'§];
         _loc2_ = §"R§.§^!'§(_loc1_.name).score;
         this.§-H§.addScore(_loc2_,§^!J§.§`!>§,true,_loc1_.x,_loc1_.y - 3,§"!E§.§^2§(_loc1_.name));
         _loc1_.§ j§(-1,true);
         ++this.§=!'§;
         return true;
      }
      
      public function §?§() : int
      {
         var _loc2_:§96§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4D§)
         {
            _loc1_ += §"R§.§^!'§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §;6§() : int
      {
         return this.§9!I§;
      }
      
      public function §4!B§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§'!G§ >= 0)
         {
            this.§'!G§ -= param1;
            if(this.§'!G§ <= 0)
            {
               _loc2_ = this.§-H§.objects.§[!D§(this.§^%§,this.§7!2§);
               if(_loc2_ < 0)
               {
                  this.§,!E§(0.1);
                  this.§'!G§ = 0;
               }
               else if(!this.§-H§.objects.§99§(_loc2_).§4! §)
               {
                  this.§'!G§ = -1;
               }
               else if(this.§-H§.objects.§99§(_loc2_).§8@§())
               {
                  this.§'!G§ = 2000;
               }
               else
               {
                  this.§'!G§ = 500;
               }
            }
         }
      }
      
      public function §0o§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§-H§.objects.§[!D§(this.§^%§,this.§7!2§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§,!E§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§'!G§ = -1;
      }
      
      public function §%!H§(param1:Number, param2:Number) : void
      {
         this.§=!"§.x = -param1;
         this.§=!"§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §9s§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §9s§ && this.§8!C§ > this.§^$§ * §%'§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§'1§(§9s§);
         var _loc1_:§96§ = this.§4D§[this.§=U§];
         _loc1_.§ j§(§?!E§.§ 9§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§96§ = this.§4D§[this.§=U§];
         _loc1_.§ j§(§?!E§.§-F§);
      }
      
      public function shoot() : void
      {
         this.§7!P§ = true;
      }
      
      protected function §`Z§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§96§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§4D§[param1])
         {
            _loc3_ = this.§4D§[param1];
            this.§7v§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§-`§(this.§4D§[param1]);
            }
            _loc3_.dispose();
            this.§4D§[param1] = null;
         }
         this.§4D§.splice(param1,1);
      }
      
      public function §-`§(param1:§96§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * § do§.§^!I§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * § do§.§^!I§) + Math.random() * -_loc8_ * 2;
            this.§-H§.particles.addParticle(§"!E§.§!!7§,§9"§.§`z§,§"!E§.§!b§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§"!E§.§3H§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§-H§.particles.addParticle(§"!E§.§,T§,§9"§.§`z§,§"!E§.§!b§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §"H§(param1:§96§) : void
      {
         this.§`Z§(this.§4D§.indexOf(param1));
      }
      
      public function §"!A§() : void
      {
         var _loc2_:§96§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§96§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4D§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§-o§ - this.§4D§[_loc1_].x) * (this.§-o§ - this.§4D§[_loc1_].x) + (this.§2!9§ - this.§4D§[_loc1_].y) * (this.§2!9§ - this.§4D§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§-o§ - this.§4D§[_loc1_ + 1].x) * (this.§-o§ - this.§4D§[_loc1_ + 1].x) + (this.§2!9§ - this.§4D§[_loc1_ + 1].y) * (this.§2!9§ - this.§4D§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§4D§[_loc1_];
               this.§4D§.splice(_loc1_,1);
               this.§4D§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§7v§.numChildren > 0)
         {
            this.§7v§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§4D§.length)
         {
            _loc2_ = this.§4D§[_loc1_];
            this.§7v§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §@k§(param1:Number, param2:Number) : §96§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§4D§.length)
         {
            if(this.§4D§[_loc3_])
            {
               if(this.§4D§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§4D§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §[Q§(param1:Number, param2:Number) : §7?§
      {
         if(param1 >= this.§-o§ - this.§^$§ / 4 && param1 <= this.§-o§ + this.§^$§ / 4 && param2 >= this.§2!9§ - this.§^$§ / 4 && this.§2!9§ <= this.§7!2§)
         {
            return this;
         }
         return null;
      }
      
      public function §@!&§(param1:§;!,§) : void
      {
         var _loc3_:§96§ = null;
         var _loc4_:§;-§ = null;
         param1.§&9§ = this.§-o§;
         param1.§`K§ = this.§2!9§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§4D§.length)
         {
            _loc3_ = this.§4D§[_loc2_];
            (_loc4_ = new §;-§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§ use§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §?!2§() : void
      {
         while(this.§4D§.length > 0)
         {
            this.§"H§(this.§4D§[0]);
         }
      }
      
      public function §1X§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§4D§.length)
         {
            if(this.§4D§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§4D§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§-o§ > param1.x && this.§-o§ < param2.x && this.§2!9§ > param1.y && this.§2!9§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §`k§() : Array
      {
         return [this.§^6§,this.§'O§];
      }
      
      public function §=§(param1:String, param2:Number, param3:Number) : §96§
      {
         var _loc4_:§96§ = this.§["§(param1,param2,param3);
         this.§"!A§();
         return _loc4_;
      }
      
      public function §;x§() : Number
      {
         return this.§4D§.length;
      }
   }
}
