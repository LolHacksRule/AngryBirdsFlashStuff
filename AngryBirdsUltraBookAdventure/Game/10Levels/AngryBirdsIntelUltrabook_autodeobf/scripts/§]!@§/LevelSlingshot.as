package §]!@§
{
   import §!!0§.SoundEngine;
   import §#!,§.§0!b§;
   import §#!,§.§6!Y§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.Animation;
   import §4!C§.§>!Q§;
   import §6!J§.Texture;
   import §<u§.Log;
   import §>!_§.LevelModel;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §package§.LevelItemManager;
   import §package§.LevelItemSoundResource;
   
   public class LevelSlingshot
   {
      
      public static const §=!^§:int = 0;
      
      public static const §7! §:int = 1;
      
      public static const §1!!§:int = 2;
      
      public static const §=s§:int = 3;
      
      public static const §]!i§:int = 5;
      
      public static const §`!$§:int = 3151368;
      
      protected static const §5z§:int = 8;
      
      protected static const §&q§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §<i§:Number = -0.7;
      
      protected static const §#!!§:Number = 0;
      
      protected static var §7i§:Texture;
      
      public static const §9X§:Number = 0.4;
       
      
      public var §`s§:LevelMain;
      
      public var §1X§:Number;
      
      public var §`J§:Number;
      
      public var §?!K§:Number;
      
      protected var §<-§:Number;
      
      protected var §5D§:Number;
      
      protected var §#!j§:Number;
      
      protected var §,!,§:Number;
      
      public var §`!K§:Number;
      
      public var §7e§:Boolean = false;
      
      protected var §9!D§:Number;
      
      public var §2!X§:Vector.<LevelSlingshotObject>;
      
      public var §1!9§:int;
      
      public var §=!Y§:int;
      
      public var §,F§:Number;
      
      public var §%R§:Sprite;
      
      public var §,I§:int = 0;
      
      public var §^P§:Number = 0;
      
      public var §,5§:Array;
      
      public var §@z§:Array;
      
      public var mSlingShotState:int;
      
      public var §9!U§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §6%§:Boolean = false;
      
      public var §5`§:Number;
      
      protected var §"!,§:Sprite;
      
      protected var §;!X§:§6!Y§;
      
      protected var §+P§:§6!Y§;
      
      protected var §^H§:Sprite;
      
      protected var §^!S§:Sprite;
      
      protected var §^§:Sprite;
      
      protected var §7!N§:§0!b§;
      
      protected var §%T§:§0!b§;
      
      private var §#!g§:Number = 0;
      
      private var §>u§:int = 0;
      
      protected var §&!P§:Number = -0.7;
      
      protected var §72§:Number = 0;
      
      public function LevelSlingshot(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§>!Q§ = null;
         this.§2!X§ = new Vector.<LevelSlingshotObject>();
         super();
         this.§`s§ = param1;
         this.§"!,§ = param3;
         if(param2)
         {
            this.setPosition(param2.§=0§,param2.§?!=§);
            this.§%!g§();
            _loc4_ = 0;
            while(_loc4_ < param2.§4!I§)
            {
               _loc5_ = param2.§3n§(_loc4_);
               this.§2!]§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§>u§ = this.§-!^§();
            this.§1!9§ = 0;
            if(this.§2!X§.length <= 0)
            {
               Log.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§1X§ + " " + this.§`J§);
               this.§'!7§(§=s§);
            }
            else
            {
               this.§'!7§(§=!^§);
            }
         }
         else
         {
            Log.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§'!7§(§=s§);
         }
         this.§5`§ = 0;
         this.§2!B§();
         this.update(0,true);
         this.§4!E§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!,§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§#!g§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§1!9§ < this.§2!X§.length;
      }
      
      public function dispose() : void
      {
         while(this.§2!X§.length > 0)
         {
            this.§0!&§(0);
         }
         this.§2!X§ = null;
         if(this.§"!,§)
         {
            this.§"!,§.dispose();
            this.§"!,§ = null;
         }
         this.§%R§ = null;
         this.§,5§ = null;
         this.§@z§ = null;
      }
      
      public function §?!P§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc5_:LevelSlingshotObject = this.§2!]§(param1,param2,param3,param4);
         _loc5_.§3g§();
         return _loc5_;
      }
      
      protected function §2!]§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc5_:LevelSlingshotObject = new LevelSlingshotObject(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§2!X§.push(_loc5_);
         }
         else
         {
            this.§2!X§.splice(param4,0,_loc5_);
         }
         this.§%R§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §'!7§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §=!^§)
         {
            this.§@I§();
            this.§,F§ = 1000;
         }
         else if(this.mSlingShotState == §7! §)
         {
            this.§@I§();
            this.§,F§ = 0;
         }
         else if(this.mSlingShotState == §1!!§)
         {
            this.§,F§ = 10000;
            this.§6%§ = false;
            this.§@I§();
         }
         else if(this.mSlingShotState == §=s§)
         {
            this.§@I§();
            this.§,F§ = 2000;
         }
         else if(this.mSlingShotState == §]!i§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§6%§ = false;
               this.§@I§();
               this.§2!X§[this.§1!9§].setPosition(this.§#!j§ - this.§2!X§[this.§1!9§].radius * Math.cos(this.§^P§ / (180 / Math.PI)),this.§,!,§ + this.§2!X§[this.§1!9§].radius * Math.sin(this.§^P§ / (180 / Math.PI)));
            }
            else
            {
               this.§@I§();
            }
         }
         this.mDragging = false;
      }
      
      public function get levelMain() : LevelMain
      {
         return this.§`s§;
      }
      
      public function §?f§() : Boolean
      {
         return this.mSlingShotState == §=s§ && this.§,F§ <= 0;
      }
      
      private function §%!g§() : void
      {
         var _loc1_:Animation = this.getSlingshotAnimation();
         var _loc2_:§ H§ = _loc1_.getFrame(0);
         var _loc3_:§ H§ = _loc1_.getFrame(1);
         this.§7!N§ = new §0!b§(_loc2_.texture);
         this.§7!N§.scaleX = _loc2_.scale;
         this.§7!N§.scaleY = _loc2_.scale;
         this.§%T§ = new §0!b§(_loc3_.texture);
         this.§%T§.scaleX = _loc3_.scale;
         this.§%T§.scaleY = _loc3_.scale;
         this.§[!6§();
         this.§`R§();
         this.§%R§ = new Sprite();
         this.§"!,§.addChild(this.§7!N§);
         this.§"!,§.addChild(this.§^H§);
         this.§"!,§.addChild(this.§%R§);
         this.§"!,§.addChild(this.§^§);
         this.§"!,§.addChild(this.§^!S§);
         this.§"!,§.addChild(this.§%T§);
         this.§?!K§ = this.§`J§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : Animation
      {
         return this.§`s§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §[!6§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§<-§ = this.§1X§;
         this.§5D§ = this.§`J§;
         this.§9!D§ = § ?§.§=M§;
         _loc1_ = null;
      }
      
      protected function §`R§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§7i§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §7i§ = this.§`s§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§^§ = new Sprite();
         var _loc1_:§0!b§ = new §0!b§(§7i§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§^§.addChild(_loc1_);
         this.§^H§ = new Sprite();
         this.§;!X§ = new §6!Y§(2,2,§`!$§);
         this.§^H§.addChild(this.§;!X§);
         this.§^!S§ = new Sprite();
         this.§+P§ = new §6!Y§(2,2,§`!$§);
         this.§^!S§.addChild(this.§+P§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§,!,§ / LevelMain.§@!d§;
         var _loc3_:Number = this.§#!j§ / LevelMain.§@!d§;
         var _loc4_:Number = 3.5 + 8 * ((this.§9!D§ - this.§`!K§) / this.§9!D§);
         this.§^§.x = _loc3_;
         this.§^§.y = _loc2_;
         this.§^§.rotation = -this.§^P§ / (180 / Math.PI);
         this.§7!N§.x = this.§1X§ / LevelMain.§@!d§ - 3;
         this.§7!N§.y = this.§`J§ / LevelMain.§@!d§ - 30;
         this.§%T§.x = this.§1X§ / LevelMain.§@!d§ - 30;
         this.§%T§.y = this.§`J§ / LevelMain.§@!d§ - 30;
         this.§^!S§.x = this.§1X§ / LevelMain.§@!d§ - 17;
         this.§^!S§.y = this.§`J§ / LevelMain.§@!d§ + 5;
         this.§^!S§.rotation = Math.atan2(_loc2_ - this.§^!S§.y,_loc3_ - this.§^!S§.x);
         this.§^H§.x = this.§1X§ / LevelMain.§@!d§ + 22;
         this.§^H§.y = this.§`J§ / LevelMain.§@!d§;
         this.§^H§.rotation = Math.atan2(_loc2_ - this.§^H§.y,_loc3_ - this.§^H§.x);
         this.§+P§.width = Math.sqrt(Math.pow(_loc3_ - this.§^!S§.x,2) + Math.pow(_loc2_ - this.§^!S§.y,2));
         this.§;!X§.width = Math.sqrt(Math.pow(_loc3_ - this.§^H§.x,2) + Math.pow(_loc2_ - this.§^H§.y,2));
         this.§+P§.height = this.§;!X§.height = _loc4_ * 2;
         this.§+P§.y = -this.§+P§.height / 2;
         this.§;!X§.y = -this.§;!X§.height / 2;
         this.§9!U§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§2!X§.length > 0)
         {
            this.§0!&§(0,true);
         }
         this.§,!4§();
         this.§2!]§("BIRD_SARDINE",this.§1X§,this.§`J§);
         this.§'!7§(§1!!§);
      }
      
      protected function §,!4§() : void
      {
         SoundEngine.§-!h§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§'!7§(§]!i§);
      }
      
      public function §@I§() : void
      {
         this.setNewCoordinatesForRubber(this.§<-§,this.§5D§ + this.§9!D§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§#!j§ == param1 && this.§,!,§ == param2)
         {
            return true;
         }
         this.§`!K§ = Math.sqrt((param2 - this.§5D§) * (param2 - this.§5D§) + (param1 - this.§<-§) * (param1 - this.§<-§));
         if(this.§`!K§ > this.§9!D§)
         {
            if(param3)
            {
               this.§`!K§ = Math.sqrt((this.§,!,§ - this.§5D§) * (this.§,!,§ - this.§5D§) + (this.§#!j§ - this.§<-§) * (this.§#!j§ - this.§<-§));
               return false;
            }
            param1 = this.§<-§ + this.§9!D§ * (param1 - this.§<-§) / this.§`!K§;
            param2 = this.§5D§ + this.§9!D§ * (param2 - this.§5D§) / this.§`!K§;
            this.§`!K§ = this.§9!D§;
         }
         this.§#!j§ = param1;
         this.§,!,§ = param2;
         this.§^P§ = Math.atan2(-(this.§,!,§ - this.§5D§),this.§#!j§ - this.§<-§);
         this.§^P§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§#!j§ = param1 + this.§&!P§;
            this.§,!,§ = param2 + this.§72§;
            this.§^P§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§9!D§ / 2;
         if(this.§`!K§ > _loc7_ && this.§^P§ > -90 - _loc4_ + _loc5_ && this.§^P§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§<-§ + _loc7_ * (param1 - this.§<-§) / this.§`!K§;
            param2 = this.§5D§ + _loc7_ * (param2 - this.§5D§) / this.§`!K§;
            this.§`!K§ = _loc7_;
            this.§#!j§ = param1;
            this.§,!,§ = param2;
         }
         else if(this.§`!K§ > _loc7_ && this.§^P§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§^P§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§9!D§ - _loc7_) * (Math.abs(this.§^P§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§<-§ + _loc8_ * (param1 - this.§<-§) / this.§`!K§;
            param2 = this.§5D§ + _loc8_ * (param2 - this.§5D§) / this.§`!K§;
            this.§`!K§ = _loc8_;
            this.§#!j§ = param1;
            this.§,!,§ = param2;
         }
         if(this.§`!K§ <= this.§9!D§ * 0.45)
         {
            this.§7e§ = true;
         }
         else if(this.§7e§ && this.§`!K§ >= this.§9!D§ * 0.8)
         {
            this.§%C§();
            this.§7e§ = false;
         }
         this.§9!U§ = true;
         return true;
      }
      
      protected function §%C§() : void
      {
         SoundEngine.§-!h§("SlingshotStreched");
      }
      
      public function §3;§(param1:Number) : void
      {
         this.setPosition(this.§1X§,this.§`J§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§1X§;
         this.§1X§ = param1;
         var _loc5_:Number = param2 - this.§`J§;
         this.§`J§ = param2;
         this.§?!K§ += _loc5_;
         this.§5D§ += _loc5_;
         this.§,!,§ += _loc5_;
         this.§<-§ += _loc4_;
         this.§#!j§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§9!U§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:LevelSlingshotObject = null;
         _loc2_ = this.§2!X§[this.§1!9§];
         var _loc3_:Number = this.§`!K§ / this.§9!D§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN) : Number(LevelSlingshot.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §=!,§() : Point
      {
         var _loc1_:LevelSlingshotObject = null;
         if(this.§2!X§.length > this.§1!9§)
         {
            _loc1_ = this.§2!X§[this.§1!9§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §7p§() : Point
      {
         return new Point(this.§<-§,this.§5D§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         this.§5k§(param1);
         if(this.§9!U§)
         {
            this.updateAnimations(param1);
         }
         this.§,F§ -= param1;
         if(this.§,F§ < 0)
         {
            this.§,F§ = 0;
         }
         if(this.mSlingShotState != §=s§)
         {
            this.§ '§(param1,param2);
            _loc3_ = null;
            if(this.§2!X§.length > 0)
            {
               _loc3_ = this.§2!X§[this.§1!9§];
            }
            if(_loc3_)
            {
               _loc3_.§,!S§(param1);
            }
            if(!_loc3_)
            {
               this.§'!7§(§=s§);
            }
            else if(this.mSlingShotState == §=!^§)
            {
               if(this.§,F§ <= 0)
               {
                  this.§'!7§(§7! §);
                  _loc3_.§?8§();
               }
            }
            else if(this.mSlingShotState == §7! §)
            {
               if(_loc3_.§'i§)
               {
                  this.§'!7§(§1!!§);
               }
            }
            else if(this.mSlingShotState == §1!!§)
            {
               _loc3_.setPosition(this.§#!j§ - _loc3_.radius * Math.cos(this.§^P§ / (180 / Math.PI)),this.§,!,§ + _loc3_.radius * Math.sin(this.§^P§ / (180 / Math.PI)));
               if(this.§6%§)
               {
                  this.§]'§(this.§`!K§ / this.§9!D§,this.§^P§);
               }
            }
         }
      }
      
      public function §+!Q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:LevelSlingshotObject = null;
         if(this.§2!X§.length > 0)
         {
            _loc5_ = this.§2!X§[this.§1!9§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§]'§(param3,param4);
      }
      
      protected function §]'§(param1:Number, param2:Number) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         this.§&!P§ = §<i§;
         this.§72§ = §#!!§;
         if(this.§2!X§.length > 0)
         {
            _loc3_ = this.§2!X§[this.§1!9§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§6%§ = false;
         this.§#!g§ = new Date().time;
         this.§`s§.§!!E§(_loc3_,param1,param2);
         this.§0!&§(this.§1!9§,_loc3_.§>#§ > 0);
         this.playBirdShotSound();
         if(this.§1!9§ >= this.§2!X§.length)
         {
            this.§'!7§(§=s§);
         }
         else
         {
            this.§'!7§(§=!^§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         SoundEngine.§-!h§("BirdShot" + _loc1_);
      }
      
      public function § '§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§1!9§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§2!X§.length)
         {
            if(this.mSlingShotState == §]!i§)
            {
               this.§2!X§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§2!X§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:LevelSlingshotObject = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§@I§();
         if(this.§=!Y§ >= this.§2!X§.length)
         {
            return false;
         }
         _loc1_ = this.§2!X§[this.§=!Y§];
         _loc2_ = LevelItemManager.§-`§(_loc1_.name).score;
         this.§`s§.addScore(_loc2_,ScoreCollector.§&![§,true,_loc1_.x,_loc1_.y - 3,§ !_§.§5U§(_loc1_.name));
         _loc1_.§!!;§(-1,true);
         ++this.§=!Y§;
         return true;
      }
      
      public function §-!^§() : int
      {
         var _loc2_:LevelSlingshotObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2!X§)
         {
            _loc1_ += LevelItemManager.§-`§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §"!2§() : int
      {
         return this.§>u§;
      }
      
      public function §5k§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§5`§ >= 0)
         {
            this.§5`§ -= param1;
            if(this.§5`§ <= 0)
            {
               _loc2_ = this.§`s§.objects.§[&§(this.§<-§,this.§?!K§);
               if(_loc2_ < 0)
               {
                  this.§3;§(0.1);
                  this.§5`§ = 0;
               }
               else if(!this.§`s§.objects.§98§(_loc2_).§9!]§)
               {
                  this.§5`§ = -1;
               }
               else if(this.§`s§.objects.§98§(_loc2_).§5_§())
               {
                  this.§5`§ = 2000;
               }
               else
               {
                  this.§5`§ = 500;
               }
            }
         }
      }
      
      public function §4!E§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§`s§.objects.§[&§(this.§<-§,this.§?!K§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§3;§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§5`§ = -1;
      }
      
      public function §6!H§(param1:Number, param2:Number) : void
      {
         this.§"!,§.x = -param1;
         this.§"!,§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §1!!§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §1!!§ && this.§`!K§ > this.§9!D§ * §9X§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§'!7§(§1!!§);
         var _loc1_:LevelSlingshotObject = this.§2!X§[this.§1!9§];
         _loc1_.§!!;§(LevelItemSoundResource.§1!k§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:LevelSlingshotObject = this.§2!X§[this.§1!9§];
         _loc1_.§!!;§(LevelItemSoundResource.§<!"§);
      }
      
      public function shoot() : void
      {
         this.§6%§ = true;
      }
      
      protected function §0!&§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§2!X§[param1])
         {
            _loc3_ = this.§2!X§[param1];
            this.§%R§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§[!R§(this.§2!X§[param1]);
            }
            _loc3_.dispose();
            this.§2!X§[param1] = null;
         }
         this.§2!X§.splice(param1,1);
      }
      
      public function §[!R§(param1:LevelSlingshotObject) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc4_ += Math.random() * (720 / 5);
            _loc6_ = _loc4_ / (180 / Math.PI);
            _loc7_ = -param1.sprite.width * LevelMain.§@!d§;
            _loc7_ += Math.random() * -_loc7_ * 2;
            _loc8_ = -param1.sprite.height * LevelMain.§@!d§;
            _loc8_ += Math.random() * -_loc8_ * 2;
            this.§`s§.particles.§?`§(§ !_§.§8,§,LevelParticleManager.§9!H§,§ !_§.§0o§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§ !_§.§ do§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§`s§.particles.§?`§(§ !_§.§3!d§,LevelParticleManager.§9!H§,§ !_§.§0o§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function § -§(param1:LevelSlingshotObject) : void
      {
         this.§0!&§(this.§2!X§.indexOf(param1));
      }
      
      public function §2!B§() : void
      {
         var _loc2_:LevelSlingshotObject = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:LevelSlingshotObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!X§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§1X§ - this.§2!X§[_loc1_].x) * (this.§1X§ - this.§2!X§[_loc1_].x) + (this.§`J§ - this.§2!X§[_loc1_].y) * (this.§`J§ - this.§2!X§[_loc1_].y));
            _loc4_ = Math.sqrt((this.§1X§ - this.§2!X§[_loc1_ + 1].x) * (this.§1X§ - this.§2!X§[_loc1_ + 1].x) + (this.§`J§ - this.§2!X§[_loc1_ + 1].y) * (this.§`J§ - this.§2!X§[_loc1_ + 1].y));
            if(_loc4_ < _loc3_)
            {
               _loc5_ = this.§2!X§[_loc1_];
               this.§2!X§.splice(_loc1_,1);
               this.§2!X§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§%R§.numChildren > 0)
         {
            this.§%R§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§2!X§.length)
         {
            _loc2_ = this.§2!X§[_loc1_];
            this.§%R§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §-4§(param1:Number, param2:Number) : LevelSlingshotObject
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§2!X§.length)
         {
            if(this.§2!X§[_loc3_])
            {
               if(this.§2!X§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§2!X§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §80§(param1:Number, param2:Number) : LevelSlingshot
      {
         if(param1 >= this.§1X§ - this.§9!D§ / 4 && param1 <= this.§1X§ + this.§9!D§ / 4 && param2 >= this.§`J§ - this.§9!D§ / 4 && this.§`J§ <= this.§?!K§)
         {
            return this;
         }
         return null;
      }
      
      public function § !g§(param1:LevelModel) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:§>!Q§ = null;
         param1.§=0§ = this.§1X§;
         param1.§?!=§ = this.§`J§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2!X§.length)
         {
            _loc3_ = this.§2!X§[_loc2_];
            _loc4_ = new §>!Q§();
            _loc4_.x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§5$§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §4I§() : void
      {
         while(this.§2!X§.length > 0)
         {
            this.§ -§(this.§2!X§[0]);
         }
      }
      
      public function §<2§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§2!X§.length)
         {
            if(this.§2!X§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§2!X§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§1X§ > param1.x && this.§1X§ < param2.x && this.§`J§ > param1.y && this.§`J§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §;2§() : Array
      {
         return [this.§%T§,this.§7!N§];
      }
      
      public function §8L§(param1:String, param2:Number, param3:Number) : LevelSlingshotObject
      {
         var _loc4_:LevelSlingshotObject = this.§2!]§(param1,param2,param3);
         this.§2!B§();
         return _loc4_;
      }
      
      public function §"Y§() : Number
      {
         return this.§2!X§.length;
      }
   }
}
