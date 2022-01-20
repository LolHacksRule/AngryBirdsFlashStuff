package § !J§
{
   import §&7§.Texture;
   import §'+§.§1u§;
   import §,4§.§0B§;
   import §9!§.§,!l§;
   import §9!§.§9'§;
   import §9`§.§+!D§;
   import §9`§.§8!P§;
   import §=!9§.§"!f§;
   import §[!4§.§-#§;
   import §[!B§.§,]§;
   import §[!B§.§7!N§;
   import §`!n§.§ !i§;
   import §`!n§.§+i§;
   import §`!n§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`+§
   {
      
      public static const §74§:int = 0;
      
      public static const §5!<§:int = 1;
      
      public static const §'!Z§:int = 2;
      
      public static const §3S§:int = 3;
      
      public static const §0!I§:int = 5;
      
      public static const §"0§:int = 3151368;
      
      protected static const §,2§:int = 8;
      
      protected static const §var§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §6]§:Number = -0.7;
      
      protected static const §<3§:Number = 0;
      
      protected static var §[&§:Texture;
      
      public static const §6S§:Number = 0.4;
       
      
      public var mLevelMain:§%M§;
      
      public var §=y§:Number;
      
      public var §#J§:Number;
      
      public var §`!B§:Number;
      
      protected var §+!H§:Number;
      
      protected var §,!c§:Number;
      
      protected var §!G§:Number;
      
      protected var §2!4§:Number;
      
      public var §-!o§:Number;
      
      public var §9!P§:Boolean = false;
      
      protected var §]z§:Number;
      
      public var §<!f§:Vector.<§5u§>;
      
      public var §0!6§:int;
      
      public var §5!g§:int;
      
      public var §^j§:Number;
      
      public var §[U§:Sprite;
      
      public var §,l§:int = 0;
      
      public var §"'§:Number = 0;
      
      public var §,!O§:Array;
      
      public var §;!?§:Array;
      
      public var mSlingShotState:int;
      
      public var §'0§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §"!]§:Boolean = false;
      
      public var §9I§:Number;
      
      protected var §[4§:Boolean = false;
      
      protected var §]!M§:Sprite;
      
      protected var §1y§:§ !i§;
      
      protected var §0!3§:§ !i§;
      
      protected var §1F§:Sprite;
      
      protected var §=!^§:Sprite;
      
      protected var §8!!§:Sprite;
      
      protected var §0]§:§+i§;
      
      protected var §!H§:§+i§;
      
      private var §%&§:Number = 0;
      
      private var § B§:int = 0;
      
      protected var § V§:Number = -0.7;
      
      protected var §"!o§:Number = 0;
      
      public function §`+§(param1:§%M§, param2:§0B§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§"!f§ = null;
         this.§<!f§ = new Vector.<§5u§>();
         super();
         this.mLevelMain = param1;
         this.§]!M§ = param3;
         if(param2)
         {
            this.setPosition(param2.§]H§,param2.§0!L§);
            this.§ `§();
            _loc4_ = 0;
            while(_loc4_ < param2.§![§)
            {
               _loc5_ = param2.§+]§(_loc4_);
               this.§&f§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§ B§ = this.§9Q§();
            this.§0!6§ = 0;
            if(this.§<!f§.length <= 0)
            {
               §1u§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§=y§ + " " + this.§#J§);
               this.§<!n§(§3S§);
            }
            else
            {
               this.§<!n§(§74§);
            }
         }
         else
         {
            §1u§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§<!n§(§3S§);
         }
         this.§9I§ = 0;
         this.§@!f§();
         this.update(0,true);
         this.§?t§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!M§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§%&§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§0!6§ < this.§<!f§.length;
      }
      
      public function dispose() : void
      {
         while(this.§<!f§.length > 0)
         {
            this.§&!"§(0);
         }
         this.§<!f§ = null;
         if(this.§]!M§)
         {
            this.§]!M§.dispose();
            this.§]!M§ = null;
         }
         this.§[U§ = null;
         this.§,!O§ = null;
         this.§;!?§ = null;
      }
      
      public function §8c§(param1:String, param2:Number, param3:Number, param4:int = -1) : §5u§
      {
         var _loc5_:§5u§;
         (_loc5_ = this.§&f§(param1,param2,param3,param4)).§=i§();
         this.§<!n§(§'!Z§);
         return _loc5_;
      }
      
      protected function §&f§(param1:String, param2:Number, param3:Number, param4:int = -1) : §5u§
      {
         var _loc5_:§5u§ = new §5u§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§<!f§.push(_loc5_);
         }
         else
         {
            this.§<!f§.splice(param4,0,_loc5_);
         }
         this.§[U§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §<!n§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §74§)
         {
            this.§>Z§();
            this.§^j§ = 1000;
         }
         else if(this.mSlingShotState == §5!<§)
         {
            this.§>Z§();
            this.§^j§ = 0;
         }
         else if(this.mSlingShotState == §'!Z§)
         {
            this.§^j§ = 10000;
            this.§"!]§ = false;
            this.§>Z§();
         }
         else if(this.mSlingShotState == §3S§)
         {
            this.§>Z§();
            this.§^j§ = 2000;
         }
         else if(this.mSlingShotState == §0!I§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§"!]§ = false;
               this.§>Z§();
               this.§<!f§[this.§0!6§].setPosition(this.§!G§ - this.§<!f§[this.§0!6§].radius * Math.cos(this.§"'§ / (180 / Math.PI)),this.§2!4§ + this.§<!f§[this.§0!6§].radius * Math.sin(this.§"'§ / (180 / Math.PI)));
            }
            else
            {
               this.§>Z§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §;@§() : §%M§
      {
         return this.mLevelMain;
      }
      
      public function §<k§() : Boolean
      {
         return this.mSlingShotState == §3S§ && this.§^j§ <= 0;
      }
      
      private function § `§() : void
      {
         var _loc1_:§+!D§ = this.§]=§();
         var _loc2_:§8!P§ = _loc1_.getFrame(0);
         var _loc3_:§8!P§ = _loc1_.getFrame(1);
         this.§0]§ = new §+i§(_loc2_.texture);
         this.§0]§.scaleX = _loc2_.scale;
         this.§0]§.scaleY = _loc2_.scale;
         this.§!H§ = new §+i§(_loc3_.texture);
         this.§!H§.scaleX = _loc3_.scale;
         this.§!H§.scaleY = _loc3_.scale;
         this.§9V§();
         this.§<!B§();
         this.§[U§ = new Sprite();
         this.§]!M§.addChild(this.§0]§);
         this.§]!M§.addChild(this.§1F§);
         this.§]!M§.addChild(this.§[U§);
         this.§]!M§.addChild(this.§8!!§);
         this.§]!M§.addChild(this.§=!^§);
         this.§]!M§.addChild(this.§!H§);
         this.§`!B§ = this.§#J§ + 8.5;
      }
      
      protected function §]=§() : §+!D§
      {
         return this.mLevelMain.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §9V§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§+!H§ = this.§=y§;
         this.§,!c§ = this.§#J§;
         this.§]z§ = §,![§.§[+§;
         _loc1_ = null;
      }
      
      protected function §<!B§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§[&§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §[&§ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§8!!§ = new Sprite();
         var _loc1_:§+i§ = new §+i§(§[&§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§8!!§.addChild(_loc1_);
         this.§1F§ = new Sprite();
         this.§1y§ = new § !i§(2,2,§"0§);
         this.§1F§.addChild(this.§1y§);
         this.§=!^§ = new Sprite();
         this.§0!3§ = new § !i§(2,2,§"0§);
         this.§=!^§.addChild(this.§0!3§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§2!4§ / §%M§.§'!Y§;
         var _loc3_:Number = this.§!G§ / §%M§.§'!Y§;
         var _loc4_:Number = 3.5 + 8 * ((this.§]z§ - this.§-!o§) / this.§]z§);
         this.§8!!§.x = _loc3_;
         this.§8!!§.y = _loc2_;
         this.§8!!§.rotation = -this.§"'§ / (180 / Math.PI);
         this.§0]§.x = this.§=y§ / §%M§.§'!Y§ - 3;
         this.§0]§.y = this.§#J§ / §%M§.§'!Y§ - 30;
         this.§!H§.x = this.§=y§ / §%M§.§'!Y§ - 30;
         this.§!H§.y = this.§#J§ / §%M§.§'!Y§ - 30;
         this.§=!^§.x = this.§=y§ / §%M§.§'!Y§ - 17;
         this.§=!^§.y = this.§#J§ / §%M§.§'!Y§ + 5;
         this.§=!^§.rotation = Math.atan2(_loc2_ - this.§=!^§.y,_loc3_ - this.§=!^§.x);
         this.§1F§.x = this.§=y§ / §%M§.§'!Y§ + 22;
         this.§1F§.y = this.§#J§ / §%M§.§'!Y§;
         this.§1F§.rotation = Math.atan2(_loc2_ - this.§1F§.y,_loc3_ - this.§1F§.x);
         this.§0!3§.width = Math.sqrt(Math.pow(_loc3_ - this.§=!^§.x,2) + Math.pow(_loc2_ - this.§=!^§.y,2));
         this.§1y§.width = Math.sqrt(Math.pow(_loc3_ - this.§1F§.x,2) + Math.pow(_loc2_ - this.§1F§.y,2));
         this.§0!3§.height = this.§1y§.height = _loc4_ * 2;
         this.§0!3§.y = -this.§0!3§.height / 2;
         this.§1y§.y = -this.§1y§.height / 2;
         this.§'0§ = false;
      }
      
      public function §4G§() : void
      {
         while(this.§<!f§.length > 0)
         {
            this.§&!"§(0,true);
         }
         this.§^!&§();
         this.§&f§("BIRD_SARDINE",this.§=y§,this.§#J§);
         this.§<!n§(§'!Z§);
      }
      
      protected function §^!&§() : void
      {
         §-#§.§4h§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§<!n§(§0!I§);
      }
      
      public function §>Z§() : void
      {
         this.setNewCoordinatesForRubber(this.§+!H§,this.§,!c§ + this.§]z§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§!G§ == param1 && this.§2!4§ == param2)
         {
            return true;
         }
         this.§-!o§ = Math.sqrt((param2 - this.§,!c§) * (param2 - this.§,!c§) + (param1 - this.§+!H§) * (param1 - this.§+!H§));
         if(this.§-!o§ > this.§]z§)
         {
            if(param3)
            {
               this.§-!o§ = Math.sqrt((this.§2!4§ - this.§,!c§) * (this.§2!4§ - this.§,!c§) + (this.§!G§ - this.§+!H§) * (this.§!G§ - this.§+!H§));
               return false;
            }
            param1 = this.§+!H§ + this.§]z§ * (param1 - this.§+!H§) / this.§-!o§;
            param2 = this.§,!c§ + this.§]z§ * (param2 - this.§,!c§) / this.§-!o§;
            this.§-!o§ = this.§]z§;
         }
         this.§!G§ = param1;
         this.§2!4§ = param2;
         this.§"'§ = Math.atan2(-(this.§2!4§ - this.§,!c§),this.§!G§ - this.§+!H§);
         this.§"'§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§!G§ = param1 + this.§ V§;
            this.§2!4§ = param2 + this.§"!o§;
            this.§"'§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§]z§ / 2;
         if(this.§-!o§ > _loc7_ && this.§"'§ > -90 - _loc4_ + _loc5_ && this.§"'§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§+!H§ + _loc7_ * (param1 - this.§+!H§) / this.§-!o§;
            param2 = this.§,!c§ + _loc7_ * (param2 - this.§,!c§) / this.§-!o§;
            this.§-!o§ = _loc7_;
            this.§!G§ = param1;
            this.§2!4§ = param2;
         }
         else if(this.§-!o§ > _loc7_ && this.§"'§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§"'§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§]z§ - _loc7_) * (Math.abs(this.§"'§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§+!H§ + _loc8_ * (param1 - this.§+!H§) / this.§-!o§;
            param2 = this.§,!c§ + _loc8_ * (param2 - this.§,!c§) / this.§-!o§;
            this.§-!o§ = _loc8_;
            this.§!G§ = param1;
            this.§2!4§ = param2;
         }
         if(this.§-!o§ <= this.§]z§ * 0.45)
         {
            this.§9!P§ = true;
         }
         else if(this.§9!P§ && this.§-!o§ >= this.§]z§ * 0.8)
         {
            this.§2I§();
            this.§9!P§ = false;
         }
         this.§'0§ = true;
         return true;
      }
      
      protected function §2I§() : void
      {
         §-#§.§4h§("SlingshotStreched");
      }
      
      public function §,!W§(param1:Number) : void
      {
         this.setPosition(this.§=y§,this.§#J§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§=y§;
         this.§=y§ = param1;
         var _loc5_:Number = param2 - this.§#J§;
         this.§#J§ = param2;
         this.§`!B§ += _loc5_;
         this.§,!c§ += _loc5_;
         this.§2!4§ += _loc5_;
         this.§+!H§ += _loc4_;
         this.§!G§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§'0§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§5u§ = null;
         _loc2_ = this.§<!f§[this.§0!6§];
         var _loc3_:Number = this.§-!o§ / this.§]z§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§`+§.BIRD_LAUNCH_FORCE_GREEN) : Number(§`+§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function § g§() : Point
      {
         var _loc1_:§5u§ = null;
         if(this.§<!f§.length > this.§0!6§)
         {
            _loc1_ = this.§<!f§[this.§0!6§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §0!5§() : Point
      {
         return new Point(this.§+!H§,this.§,!c§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§5u§ = null;
         this.§#s§(param1);
         if(this.§'0§)
         {
            this.updateAnimations(param1);
         }
         this.§^j§ -= param1;
         if(this.§^j§ < 0)
         {
            this.§^j§ = 0;
         }
         if(this.mSlingShotState != §3S§)
         {
            this.§7!U§(param1,param2);
            _loc3_ = null;
            if(this.§<!f§.length > 0)
            {
               _loc3_ = this.§<!f§[this.§0!6§];
            }
            if(_loc3_)
            {
               _loc3_.§]W§(param1);
            }
            if(!_loc3_)
            {
               this.§<!n§(§3S§);
            }
            else if(this.mSlingShotState == §74§)
            {
               if(this.§^j§ <= 0)
               {
                  this.§<!n§(§5!<§);
                  _loc3_.§]E§();
               }
            }
            else if(this.mSlingShotState == §5!<§)
            {
               if(_loc3_.§45§)
               {
                  this.§<!n§(§'!Z§);
               }
            }
            else if(this.mSlingShotState == §'!Z§)
            {
               _loc3_.setPosition(this.§!G§ - _loc3_.radius * Math.cos(this.§"'§ / (180 / Math.PI)),this.§2!4§ + _loc3_.radius * Math.sin(this.§"'§ / (180 / Math.PI)));
               if(this.§"!]§)
               {
                  this.§%!d§(this.§-!o§ / this.§]z§,this.§"'§);
               }
            }
         }
      }
      
      public function §!!P§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§5u§ = null;
         if(this.§<!f§.length > 0)
         {
            _loc5_ = this.§<!f§[this.§0!6§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§%!d§(param3,param4);
      }
      
      protected function §%!d§(param1:Number, param2:Number) : void
      {
         var _loc3_:§5u§ = null;
         this.§ V§ = §6]§;
         this.§"!o§ = §<3§;
         if(this.§<!f§.length > 0)
         {
            _loc3_ = this.§<!f§[this.§0!6§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§"!]§ = false;
         this.§%&§ = new Date().time;
         this.mLevelMain.§@!q§(_loc3_,param1,param2);
         this.§&!"§(this.§0!6§,_loc3_.§5h§ > 0);
         this.playBirdShotSound();
         if(this.§0!6§ >= this.§<!f§.length)
         {
            this.§<!n§(§3S§);
         }
         else
         {
            this.§<!n§(§74§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §-#§.§4h§("BirdShot" + _loc1_);
      }
      
      public function §7!U§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§0!6§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§<!f§.length)
         {
            if(this.mSlingShotState == §0!I§)
            {
               this.§<!f§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§<!f§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§5u§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§>Z§();
         if(this.§5!g§ >= this.§<!f§.length)
         {
            return false;
         }
         _loc1_ = this.§<!f§[this.§5!g§];
         _loc2_ = §,!l§.§<!<§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§[m§.§7!?§,true,_loc1_.x,_loc1_.y - 3,§,]§.§ N§(_loc1_.name));
         _loc1_.§5b§(-1,true);
         ++this.§5!g§;
         return true;
      }
      
      public function §9Q§() : int
      {
         var _loc2_:§5u§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<!f§)
         {
            _loc1_ += §,!l§.§<!<§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §^<§() : int
      {
         return this.§ B§;
      }
      
      public function §#s§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§9I§ >= 0)
         {
            this.§9I§ -= param1;
            if(this.§9I§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§[!o§(this.§+!H§,this.§`!B§);
               if(_loc2_ < 0)
               {
                  this.§,!W§(0.1);
                  this.§9I§ = 0;
               }
               else if(!this.mLevelMain.objects.§=!&§(_loc2_).§3!2§)
               {
                  this.§9I§ = -1;
               }
               else if(this.mLevelMain.objects.§=!&§(_loc2_).§7!;§())
               {
                  this.§9I§ = 2000;
               }
               else
               {
                  this.§9I§ = 500;
               }
            }
         }
      }
      
      public function §?t§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§[!o§(this.§+!H§,this.§`!B§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§,!W§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§9I§ = -1;
      }
      
      public function §5[§(param1:Number, param2:Number) : void
      {
         this.§]!M§.x = -param1;
         this.§]!M§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §'!Z§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §'!Z§ && this.§-!o§ > this.§]z§ * §6S§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§<!n§(§'!Z§);
         var _loc1_:§5u§ = this.§<!f§[this.§0!6§];
         _loc1_.§5b§(§9'§.§%!Z§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§5u§ = this.§<!f§[this.§0!6§];
         _loc1_.§5b§(§9'§.§>!U§);
      }
      
      public function shoot() : void
      {
         this.§"!]§ = true;
      }
      
      protected function §&!"§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§5u§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§<!f§[param1])
         {
            _loc3_ = this.§<!f§[param1];
            this.§[U§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§0p§(this.§<!f§[param1]);
            }
            _loc3_.dispose();
            this.§<!f§[param1] = null;
         }
         this.§<!f§.splice(param1,1);
      }
      
      public function §0p§(param1:§5u§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §%M§.§'!Y§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §%M§.§'!Y§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§3X§(§,]§.§"@§,§7!N§.§<!Z§,§,]§.§in §,param1.x + _loc7_,param1.y + _loc8_,1500,"",§,]§.§0!l§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§3X§(§,]§.§3#§,§7!N§.§<!Z§,§,]§.§in §,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §8<§(param1:§5u§) : void
      {
         this.§&!"§(this.§<!f§.indexOf(param1));
      }
      
      public function §@!f§() : void
      {
         var _loc2_:§5u§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§5u§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!f§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§=y§ - this.§<!f§[_loc1_].x) * (this.§=y§ - this.§<!f§[_loc1_].x) + (this.§#J§ - this.§<!f§[_loc1_].y) * (this.§#J§ - this.§<!f§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§=y§ - this.§<!f§[_loc1_ + 1].x) * (this.§=y§ - this.§<!f§[_loc1_ + 1].x) + (this.§#J§ - this.§<!f§[_loc1_ + 1].y) * (this.§#J§ - this.§<!f§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§<!f§[_loc1_];
               this.§<!f§.splice(_loc1_,1);
               this.§<!f§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§[U§.numChildren > 0)
         {
            this.§[U§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§<!f§.length)
         {
            _loc2_ = this.§<!f§[_loc1_];
            this.§[U§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §9!7§(param1:Number, param2:Number) : §5u§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§<!f§.length)
         {
            if(this.§<!f§[_loc3_])
            {
               if(this.§<!f§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§<!f§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function § !@§(param1:Number, param2:Number) : §`+§
      {
         if(param1 >= this.§=y§ - this.§]z§ / 4 && param1 <= this.§=y§ + this.§]z§ / 4 && param2 >= this.§#J§ - this.§]z§ / 4 && this.§#J§ <= this.§`!B§)
         {
            return this;
         }
         return null;
      }
      
      public function §#! §(param1:§0B§) : void
      {
         var _loc3_:§5u§ = null;
         var _loc4_:§"!f§ = null;
         param1.§]H§ = this.§=y§;
         param1.§0!L§ = this.§#J§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<!f§.length)
         {
            _loc3_ = this.§<!f§[_loc2_];
            (_loc4_ = new §"!f§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§7!k§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §[>§() : void
      {
         while(this.§<!f§.length > 0)
         {
            this.§8<§(this.§<!f§[0]);
         }
      }
      
      public function §%!R§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§<!f§.length)
         {
            if(this.§<!f§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§<!f§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§=y§ > param1.x && this.§=y§ < param2.x && this.§#J§ > param1.y && this.§#J§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §!!a§() : Array
      {
         return [this.§!H§,this.§0]§];
      }
      
      public function §=!]§(param1:String, param2:Number, param3:Number) : §5u§
      {
         var _loc4_:§5u§ = this.§&f§(param1,param2,param3);
         this.§@!f§();
         return _loc4_;
      }
      
      public function §^W§() : Number
      {
         return this.§<!f§.length;
      }
      
      public function §>f§() : Boolean
      {
         return this.§[4§;
      }
   }
}
