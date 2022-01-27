package §>2§
{
   import § !N§.§6!§;
   import § !N§.§=_§;
   import §+!N§.§1[§;
   import §+!N§.§=!2§;
   import §-!5§.§5s§;
   import §0l§.Texture;
   import §3H§.§!q§;
   import §3H§.Sprite;
   import §3H§.§`!@§;
   import §5=§.§8G§;
   import §7E§.§@u§;
   import §7E§.§^A§;
   import §[N§.§9k§;
   import §^I§.§8!-§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+!E§
   {
      
      public static const §&!M§:int = 0;
      
      public static const §6E§:int = 1;
      
      public static const §%_§:int = 2;
      
      public static const §!]§:int = 3;
      
      public static const §9!§:int = 5;
      
      public static const §^i§:int = 3151368;
      
      protected static const §"+§:int = 8;
      
      protected static const §8"§:int = 0;
      
      public static const §@M§:Number = 46.25;
      
      public static const §5!G§:Number = 52.5;
      
      protected static const §01§:Number = -0.7;
      
      protected static const §%8§:Number = 0;
      
      protected static var §,4§:Texture;
      
      public static const §"!+§:Number = 0.4;
       
      
      public var §@k§:§4h§;
      
      public var §,R§:Number;
      
      public var §=! §:Number;
      
      public var §%!§:Number;
      
      protected var §@!;§:Number;
      
      protected var §'1§:Number;
      
      protected var §^y§:Number;
      
      protected var §?t§:Number;
      
      public var §=!3§:Number;
      
      public var §!!§:Boolean = false;
      
      protected var §8!2§:Number;
      
      public var §^j§:Vector.<§#!<§>;
      
      public var §++§:int;
      
      public var §9x§:int;
      
      public var §]!,§:Number;
      
      public var §?'§:Sprite;
      
      public var §var§:int = 0;
      
      public var §6!3§:Number = 0;
      
      public var §1!§:Array;
      
      public var §'_§:Array;
      
      public var mSlingShotState:int;
      
      public var §]0§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §4H§:Boolean = false;
      
      public var §@v§:Number;
      
      protected var §5+§:Sprite;
      
      protected var §'!2§:§!q§;
      
      protected var §+!§:§!q§;
      
      protected var §"0§:Sprite;
      
      protected var § O§:Sprite;
      
      protected var §^x§:Sprite;
      
      protected var §>i§:§`!@§;
      
      protected var §[P§:§`!@§;
      
      private var §null §:Number = 0;
      
      private var §1!E§:int = 0;
      
      protected var §7!+§:Number = -0.7;
      
      protected var §3@§:Number = 0;
      
      public function §+!E§(param1:§4h§, param2:§8G§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§8!-§ = null;
         this.§^j§ = new Vector.<§#!<§>();
         super();
         this.§@k§ = param1;
         this.§5+§ = param3;
         if(param2)
         {
            this.setPosition(param2.§`u§,param2.§9;§);
            this.§9e§();
            _loc4_ = 0;
            while(_loc4_ < param2.§`!J§)
            {
               _loc5_ = param2.§1'§(_loc4_);
               this.§=y§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§1!E§ = this.§^N§();
            this.§++§ = 0;
            if(this.§^j§.length <= 0)
            {
               §5s§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§,R§ + " " + this.§=! §);
               this.§1!'§(§!]§);
            }
            else
            {
               this.§1!'§(§&!M§);
            }
         }
         else
         {
            §5s§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§1!'§(§!]§);
         }
         this.§@v§ = 0;
         this.§;7§();
         this.update(0,true);
         this.§73§();
         this.§,-§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§5+§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§null §;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§++§ < this.§^j§.length;
      }
      
      public function dispose() : void
      {
         while(this.§^j§.length > 0)
         {
            this.§1l§(0);
         }
         this.§^j§ = null;
         if(this.§5+§)
         {
            this.§5+§.dispose();
            this.§5+§ = null;
         }
         this.§?'§ = null;
         this.§1!§ = null;
         this.§'_§ = null;
      }
      
      public function §1c§(param1:String, param2:Number, param3:Number, param4:int = -1) : §#!<§
      {
         var _loc5_:§#!<§;
         (_loc5_ = this.§=y§(param1,param2,param3,param4)).§"6§();
         return _loc5_;
      }
      
      protected function §=y§(param1:String, param2:Number, param3:Number, param4:int = -1) : §#!<§
      {
         var _loc5_:§#!<§ = new §#!<§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§^j§.push(_loc5_);
         }
         else
         {
            this.§^j§.splice(param4,0,_loc5_);
         }
         this.§?'§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §1!'§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §&!M§)
         {
            this.§3x§();
            this.§]!,§ = 1000;
         }
         else if(this.mSlingShotState == §6E§)
         {
            this.§3x§();
            this.§]!,§ = 0;
         }
         else if(this.mSlingShotState == §%_§)
         {
            this.§]!,§ = 10000;
            this.§4H§ = false;
            this.§3x§();
         }
         else if(this.mSlingShotState == §!]§)
         {
            this.§3x§();
            this.§]!,§ = 2000;
         }
         else if(this.mSlingShotState == §9!§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§4H§ = false;
               this.§3x§();
               this.§^j§[this.§++§].setPosition(this.§^y§ - this.§^j§[this.§++§].radius * Math.cos(this.§6!3§ / (180 / Math.PI)),this.§?t§ + this.§^j§[this.§++§].radius * Math.sin(this.§6!3§ / (180 / Math.PI)));
            }
            else
            {
               this.§3x§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §+t§() : §4h§
      {
         return this.§@k§;
      }
      
      public function §#!?§() : Boolean
      {
         return this.mSlingShotState == §!]§ && this.§]!,§ <= 0;
      }
      
      private function §9e§() : void
      {
         var _loc1_:§=_§ = this.§!I§();
         var _loc2_:§6!§ = _loc1_.getFrame(0);
         var _loc3_:§6!§ = _loc1_.getFrame(1);
         this.§>i§ = new §`!@§(_loc2_.texture);
         this.§>i§.scaleX = _loc2_.scale;
         this.§>i§.scaleY = _loc2_.scale;
         this.§[P§ = new §`!@§(_loc3_.texture);
         this.§[P§.scaleX = _loc3_.scale;
         this.§[P§.scaleY = _loc3_.scale;
         this.§=e§();
         this.§;!7§();
         this.§?'§ = new Sprite();
         this.§5+§.addChild(this.§>i§);
         this.§5+§.addChild(this.§"0§);
         this.§5+§.addChild(this.§?'§);
         this.§5+§.addChild(this.§^x§);
         this.§5+§.addChild(this.§ O§);
         this.§5+§.addChild(this.§[P§);
         this.§%!§ = this.§=! § + 8.5;
      }
      
      protected function §!I§() : §=_§
      {
         return this.§@k§.§4!C§.getAnimation("SLINGSHOT");
      }
      
      public function §=e§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§@!;§ = this.§,R§;
         this.§'1§ = this.§=! §;
         this.§8!2§ = Tuner.§-!&§;
         _loc1_ = null;
      }
      
      protected function §;!7§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§,4§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §,4§ = this.§@k§.textureManager.§>!6§(_loc2_);
         }
         this.§^x§ = new Sprite();
         var _loc1_:§`!@§ = new §`!@§(§,4§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§^x§.addChild(_loc1_);
         this.§"0§ = new Sprite();
         this.§'!2§ = new §!q§(2,2,§^i§);
         this.§"0§.addChild(this.§'!2§);
         this.§ O§ = new Sprite();
         this.§+!§ = new §!q§(2,2,§^i§);
         this.§ O§.addChild(this.§+!§);
      }
      
      public function §,-§(param1:Number) : void
      {
         var _loc2_:Number = this.§?t§ / §4h§.§-9§;
         var _loc3_:Number = this.§^y§ / §4h§.§-9§;
         var _loc4_:Number = 3.5 + 8 * ((this.§8!2§ - this.§=!3§) / this.§8!2§);
         this.§^x§.x = _loc3_;
         this.§^x§.y = _loc2_;
         this.§^x§.rotation = -this.§6!3§ / (180 / Math.PI);
         this.§>i§.x = this.§,R§ / §4h§.§-9§ - 3;
         this.§>i§.y = this.§=! § / §4h§.§-9§ - 30;
         this.§[P§.x = this.§,R§ / §4h§.§-9§ - 30;
         this.§[P§.y = this.§=! § / §4h§.§-9§ - 30;
         this.§ O§.x = this.§,R§ / §4h§.§-9§ - 17;
         this.§ O§.y = this.§=! § / §4h§.§-9§ + 5;
         this.§ O§.rotation = Math.atan2(_loc2_ - this.§ O§.y,_loc3_ - this.§ O§.x);
         this.§"0§.x = this.§,R§ / §4h§.§-9§ + 22;
         this.§"0§.y = this.§=! § / §4h§.§-9§;
         this.§"0§.rotation = Math.atan2(_loc2_ - this.§"0§.y,_loc3_ - this.§"0§.x);
         this.§+!§.width = Math.sqrt(Math.pow(_loc3_ - this.§ O§.x,2) + Math.pow(_loc2_ - this.§ O§.y,2));
         this.§'!2§.width = Math.sqrt(Math.pow(_loc3_ - this.§"0§.x,2) + Math.pow(_loc2_ - this.§"0§.y,2));
         this.§+!§.height = this.§'!2§.height = _loc4_ * 2;
         this.§+!§.y = -this.§+!§.height / 2;
         this.§'!2§.y = -this.§'!2§.height / 2;
         this.§]0§ = false;
      }
      
      public function §5!-§() : void
      {
         while(this.§^j§.length > 0)
         {
            this.§1l§(0,true);
         }
         this.§=A§();
         this.§=y§("BIRD_SARDINE",this.§,R§,this.§=! §);
         this.§1!'§(§%_§);
      }
      
      protected function §=A§() : void
      {
         §9k§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§1!'§(§9!§);
      }
      
      public function §3x§() : void
      {
         this.setNewCoordinatesForRubber(this.§@!;§,this.§'1§ + this.§8!2§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§^y§ == param1 && this.§?t§ == param2)
         {
            return true;
         }
         this.§=!3§ = Math.sqrt((param2 - this.§'1§) * (param2 - this.§'1§) + (param1 - this.§@!;§) * (param1 - this.§@!;§));
         if(this.§=!3§ > this.§8!2§)
         {
            if(param3)
            {
               this.§=!3§ = Math.sqrt((this.§?t§ - this.§'1§) * (this.§?t§ - this.§'1§) + (this.§^y§ - this.§@!;§) * (this.§^y§ - this.§@!;§));
               return false;
            }
            param1 = this.§@!;§ + this.§8!2§ * (param1 - this.§@!;§) / this.§=!3§;
            param2 = this.§'1§ + this.§8!2§ * (param2 - this.§'1§) / this.§=!3§;
            this.§=!3§ = this.§8!2§;
         }
         this.§^y§ = param1;
         this.§?t§ = param2;
         this.§6!3§ = Math.atan2(-(this.§?t§ - this.§'1§),this.§^y§ - this.§@!;§);
         this.§6!3§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§^y§ = param1 + this.§7!+§;
            this.§?t§ = param2 + this.§3@§;
            this.§6!3§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§8!2§ / 2;
         if(this.§=!3§ > _loc7_ && this.§6!3§ > -90 - _loc4_ + _loc5_ && this.§6!3§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§@!;§ + _loc7_ * (param1 - this.§@!;§) / this.§=!3§;
            param2 = this.§'1§ + _loc7_ * (param2 - this.§'1§) / this.§=!3§;
            this.§=!3§ = _loc7_;
            this.§^y§ = param1;
            this.§?t§ = param2;
         }
         else if(this.§=!3§ > _loc7_ && this.§6!3§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§6!3§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§8!2§ - _loc7_) * (Math.abs(this.§6!3§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§@!;§ + _loc8_ * (param1 - this.§@!;§) / this.§=!3§;
            param2 = this.§'1§ + _loc8_ * (param2 - this.§'1§) / this.§=!3§;
            this.§=!3§ = _loc8_;
            this.§^y§ = param1;
            this.§?t§ = param2;
         }
         if(this.§=!3§ <= this.§8!2§ * 0.45)
         {
            this.§!!§ = true;
         }
         else if(this.§!!§ && this.§=!3§ >= this.§8!2§ * 0.8)
         {
            this.§^K§();
            this.§!!§ = false;
         }
         this.§]0§ = true;
         return true;
      }
      
      protected function §^K§() : void
      {
         §9k§.playSound("SlingshotStreched");
      }
      
      public function §&!B§(param1:Number) : void
      {
         this.setPosition(this.§,R§,this.§=! § + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§,R§;
         this.§,R§ = param1;
         var _loc5_:Number = param2 - this.§=! §;
         this.§=! § = param2;
         this.§%!§ += _loc5_;
         this.§'1§ += _loc5_;
         this.§?t§ += _loc5_;
         this.§@!;§ += _loc4_;
         this.§^y§ += _loc4_;
         if(param3)
         {
            this.§,-§(0);
         }
         this.§]0§ = true;
      }
      
      public function §<f§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§#!<§ = null;
         _loc2_ = this.§^j§[this.§++§];
         var _loc3_:Number = this.§=!3§ / this.§8!2§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§+!E§.§5!G§) : Number(§+!E§.§@M§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §6!"§() : Point
      {
         var _loc1_:§#!<§ = null;
         if(this.§^j§.length > this.§++§)
         {
            _loc1_ = this.§^j§[this.§++§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §@!#§() : Point
      {
         return new Point(this.§@!;§,this.§'1§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§#!<§ = null;
         this.§3m§(param1);
         if(this.§]0§)
         {
            this.§,-§(param1);
         }
         this.§]!,§ -= param1;
         if(this.§]!,§ < 0)
         {
            this.§]!,§ = 0;
         }
         if(this.mSlingShotState != §!]§)
         {
            this.§?$§(param1,param2);
            _loc3_ = null;
            if(this.§^j§.length > 0)
            {
               _loc3_ = this.§^j§[this.§++§];
            }
            if(_loc3_)
            {
               _loc3_.§]D§(param1);
            }
            if(!_loc3_)
            {
               this.§1!'§(§!]§);
            }
            else if(this.mSlingShotState == §&!M§)
            {
               if(this.§]!,§ <= 0)
               {
                  this.§1!'§(§6E§);
                  _loc3_.§3!#§();
               }
            }
            else if(this.mSlingShotState == §6E§)
            {
               if(_loc3_.§!a§)
               {
                  this.§1!'§(§%_§);
               }
            }
            else if(this.mSlingShotState == §%_§)
            {
               _loc3_.setPosition(this.§^y§ - _loc3_.radius * Math.cos(this.§6!3§ / (180 / Math.PI)),this.§?t§ + _loc3_.radius * Math.sin(this.§6!3§ / (180 / Math.PI)));
               if(this.§4H§)
               {
                  this.§1^§(this.§=!3§ / this.§8!2§,this.§6!3§);
               }
            }
         }
      }
      
      public function §6!#§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§#!<§ = null;
         if(this.§^j§.length > 0)
         {
            _loc5_ = this.§^j§[this.§++§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§1^§(param3,param4);
      }
      
      protected function §1^§(param1:Number, param2:Number) : void
      {
         var _loc3_:§#!<§ = null;
         this.§7!+§ = §01§;
         this.§3@§ = §%8§;
         if(this.§^j§.length > 0)
         {
            _loc3_ = this.§^j§[this.§++§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§4H§ = false;
         this.§null § = new Date().time;
         this.§@k§.shootBird(_loc3_,param1,param2);
         this.§1l§(this.§++§,_loc3_.§4!B§ > 0);
         this.§?w§();
         if(this.§++§ >= this.§^j§.length)
         {
            this.§1!'§(§!]§);
         }
         else
         {
            this.§1!'§(§&!M§);
         }
      }
      
      protected function §?w§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §9k§.playSound("BirdShot" + _loc1_);
      }
      
      public function §?$§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§++§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§^j§.length)
         {
            if(this.mSlingShotState == §9!§)
            {
               this.§^j§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§^j§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§#!<§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§3x§();
         if(this.§9x§ >= this.§^j§.length)
         {
            return false;
         }
         _loc1_ = this.§^j§[this.§9x§];
         _loc2_ = §1[§.§[Y§(_loc1_.name).score;
         this.§@k§.addScore(_loc2_,§&L§.§=-§,true,_loc1_.x,_loc1_.y - 3,§^A§.§]!<§(_loc1_.name));
         _loc1_.§=D§(-1,true);
         ++this.§9x§;
         return true;
      }
      
      public function §^N§() : int
      {
         var _loc2_:§#!<§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§^j§)
         {
            _loc1_ += §1[§.§[Y§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §6!,§() : int
      {
         return this.§1!E§;
      }
      
      public function §3m§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§@v§ >= 0)
         {
            this.§@v§ -= param1;
            if(this.§@v§ <= 0)
            {
               _loc2_ = this.§@k§.objects.§,+§(this.§@!;§,this.§%!§);
               if(_loc2_ < 0)
               {
                  this.§&!B§(0.1);
                  this.§@v§ = 0;
               }
               else if(!this.§@k§.objects.§8!F§(_loc2_).§]!;§)
               {
                  this.§@v§ = -1;
               }
               else if(this.§@k§.objects.§8!F§(_loc2_).§88§())
               {
                  this.§@v§ = 2000;
               }
               else
               {
                  this.§@v§ = 500;
               }
            }
         }
      }
      
      public function §73§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§@k§.objects.§,+§(this.§@!;§,this.§%!§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§&!B§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§@v§ = -1;
      }
      
      public function §!0§(param1:Number, param2:Number) : void
      {
         this.§5+§.x = -param1;
         this.§5+§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §%_§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §%_§ && this.§=!3§ > this.§8!2§ * §"!+§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§1!'§(§%_§);
         var _loc1_:§#!<§ = this.§^j§[this.§++§];
         _loc1_.§=D§(§=!2§.§'!K§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§#!<§ = this.§^j§[this.§++§];
         _loc1_.§=D§(§=!2§.§?X§);
      }
      
      public function shoot() : void
      {
         this.§4H§ = true;
      }
      
      protected function §1l§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§#!<§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§^j§[param1])
         {
            _loc3_ = this.§^j§[param1];
            this.§?'§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§`f§(this.§^j§[param1]);
            }
            _loc3_.dispose();
            this.§^j§[param1] = null;
         }
         this.§^j§.splice(param1,1);
      }
      
      public function §`f§(param1:§#!<§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §4h§.§-9§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §4h§.§-9§) + Math.random() * -_loc8_ * 2;
            this.§@k§.particles.addParticle(§^A§.§1!B§,§@u§.§&&§,§^A§.§<!$§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§^A§.§,_§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§@k§.particles.addParticle(§^A§.§,O§,§@u§.§&&§,§^A§.§<!$§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §%S§(param1:§#!<§) : void
      {
         this.§1l§(this.§^j§.indexOf(param1));
      }
      
      public function §;7§() : void
      {
         var _loc2_:§#!<§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§#!<§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^j§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§,R§ - this.§^j§[_loc1_].x) * (this.§,R§ - this.§^j§[_loc1_].x) + (this.§=! § - this.§^j§[_loc1_].y) * (this.§=! § - this.§^j§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§,R§ - this.§^j§[_loc1_ + 1].x) * (this.§,R§ - this.§^j§[_loc1_ + 1].x) + (this.§=! § - this.§^j§[_loc1_ + 1].y) * (this.§=! § - this.§^j§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§^j§[_loc1_];
               this.§^j§.splice(_loc1_,1);
               this.§^j§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§?'§.numChildren > 0)
         {
            this.§?'§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§^j§.length)
         {
            _loc2_ = this.§^j§[_loc1_];
            this.§?'§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §function§(param1:Number, param2:Number) : §#!<§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§^j§.length)
         {
            if(this.§^j§[_loc3_])
            {
               if(this.§^j§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§^j§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §3!E§(param1:Number, param2:Number) : §+!E§
      {
         if(param1 >= this.§,R§ - this.§8!2§ / 4 && param1 <= this.§,R§ + this.§8!2§ / 4 && param2 >= this.§=! § - this.§8!2§ / 4 && this.§=! § <= this.§%!§)
         {
            return this;
         }
         return null;
      }
      
      public function §>!;§(param1:§8G§) : void
      {
         var _loc3_:§#!<§ = null;
         var _loc4_:§8!-§ = null;
         param1.§`u§ = this.§,R§;
         param1.§9;§ = this.§=! §;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§^j§.length)
         {
            _loc3_ = this.§^j§[_loc2_];
            (_loc4_ = new §8!-§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§-!E§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §"2§() : void
      {
         while(this.§^j§.length > 0)
         {
            this.§%S§(this.§^j§[0]);
         }
      }
      
      public function §^@§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§^j§.length)
         {
            if(this.§^j§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§^j§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§,R§ > param1.x && this.§,R§ < param2.x && this.§=! § > param1.y && this.§=! § < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §"!2§() : Array
      {
         return [this.§[P§,this.§>i§];
      }
      
      public function §>!,§(param1:String, param2:Number, param3:Number) : §#!<§
      {
         var _loc4_:§#!<§ = this.§=y§(param1,param2,param3);
         this.§;7§();
         return _loc4_;
      }
      
      public function § N§() : Number
      {
         return this.§^j§.length;
      }
   }
}
