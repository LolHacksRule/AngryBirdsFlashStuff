package §2!H§
{
   import §"L§.LevelModel;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §&V§.§38§;
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §6!7§.§-m§;
   import §6!7§.§3x§;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §7i§.Texture;
   import §;T§.LevelItemManager;
   import §;T§.LevelItemSoundResource;
   import §=?§.SoundEngine;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelSlingshot
   {
      
      public static const §%l§:int = 0;
      
      public static const §&!+§:int = 1;
      
      public static const §"o§:int = 2;
      
      public static const §71§:int = 3;
      
      public static const §=!3§:int = 5;
      
      public static const §3!4§:int = 3151368;
      
      protected static const §@N§:int = 8;
      
      protected static const §0!F§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §2j§:Number = -0.7;
      
      protected static const §+Q§:Number = 0;
      
      protected static var §7!I§:Texture;
      
      public static const §-%§:Number = 0.4;
       
      
      public var §"!>§:LevelMain;
      
      public var §`!%§:Number;
      
      public var §else§:Number;
      
      public var §'0§:Number;
      
      protected var §>A§:Number;
      
      protected var §@!1§:Number;
      
      protected var §'?§:Number;
      
      protected var §,m§:Number;
      
      public var §'H§:Number;
      
      public var §0!%§:Boolean = false;
      
      protected var §+8§:Number;
      
      public var §#P§:Vector.<LevelSlingshotObject>;
      
      public var §@A§:int;
      
      public var §5C§:int;
      
      public var §@!_§:Number;
      
      public var §^x§:Sprite;
      
      public var get:int = 0;
      
      public var §6a§:Number = 0;
      
      public var §%!O§:Array;
      
      public var §?!i§:Array;
      
      public var mSlingShotState:int;
      
      public var §=P§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §"8§:Boolean = false;
      
      public var §]§:Number;
      
      protected var §'6§:Sprite;
      
      protected var §[2§:§3x§;
      
      protected var §,!i§:§3x§;
      
      protected var §?0§:Sprite;
      
      protected var §+v§:Sprite;
      
      protected var §^H§:Sprite;
      
      protected var §@!$§:§-m§;
      
      protected var §4!$§:§-m§;
      
      private var §<2§:Number = 0;
      
      private var §+X§:int = 0;
      
      protected var §#!;§:Number = -0.7;
      
      protected var §#f§:Number = 0;
      
      public function LevelSlingshot(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§38§ = null;
         this.§#P§ = new Vector.<LevelSlingshotObject>();
         super();
         this.§"!>§ = param1;
         this.§'6§ = param3;
         if(param2)
         {
            this.setPosition(param2.§7a§,param2.§<7§);
            this.§>!X§();
            _loc4_ = 0;
            while(_loc4_ < param2.§8!c§)
            {
               _loc5_ = param2.§65§(_loc4_);
               this.§[!?§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§+X§ = this.§<o§();
            this.§@A§ = 0;
            if(this.§#P§.length <= 0)
            {
               Log.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§`!%§ + " " + this.§else§);
               this.§'L§(§71§);
            }
            else
            {
               this.§'L§(§%l§);
            }
         }
         else
         {
            Log.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§'L§(§71§);
         }
         this.§]§ = 0;
         this.§<!i§();
         this.update(0,true);
         this.§7C§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§'6§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§<2§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§@A§ < this.§#P§.length;
      }
      
      public function dispose() : void
      {
         while(this.§#P§.length > 0)
         {
            this.§>!M§(0);
         }
         this.§#P§ = null;
         if(this.§'6§)
         {
            this.§'6§.dispose();
            this.§'6§ = null;
         }
         this.§^x§ = null;
         this.§%!O§ = null;
         this.§?!i§ = null;
      }
      
      public function §;!<§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc5_:LevelSlingshotObject = this.§[!?§(param1,param2,param3,param4);
         _loc5_.§&#§();
         return _loc5_;
      }
      
      protected function §[!?§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc5_:LevelSlingshotObject = new LevelSlingshotObject(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§#P§.push(_loc5_);
         }
         else
         {
            this.§#P§.splice(param4,0,_loc5_);
         }
         this.§^x§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §'L§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §%l§)
         {
            this.§use§();
            this.§@!_§ = 1000;
         }
         else if(this.mSlingShotState == §&!+§)
         {
            this.§use§();
            this.§@!_§ = 0;
         }
         else if(this.mSlingShotState == §"o§)
         {
            this.§@!_§ = 10000;
            this.§"8§ = false;
            this.§use§();
         }
         else if(this.mSlingShotState == §71§)
         {
            this.§use§();
            this.§@!_§ = 2000;
         }
         else if(this.mSlingShotState == §=!3§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§"8§ = false;
               this.§use§();
               this.§#P§[this.§@A§].setPosition(this.§'?§ - this.§#P§[this.§@A§].radius * Math.cos(this.§6a§ / (180 / Math.PI)),this.§,m§ + this.§#P§[this.§@A§].radius * Math.sin(this.§6a§ / (180 / Math.PI)));
            }
            else
            {
               this.§use§();
            }
         }
         this.mDragging = false;
      }
      
      public function get levelMain() : LevelMain
      {
         return this.§"!>§;
      }
      
      public function §^G§() : Boolean
      {
         return this.mSlingShotState == §71§ && this.§@!_§ <= 0;
      }
      
      private function §>!X§() : void
      {
         var _loc1_:Animation = this.getSlingshotAnimation();
         var _loc2_:§;K§ = _loc1_.getFrame(0);
         var _loc3_:§;K§ = _loc1_.getFrame(1);
         this.§@!$§ = new §-m§(_loc2_.texture);
         this.§@!$§.scaleX = _loc2_.scale;
         this.§@!$§.scaleY = _loc2_.scale;
         this.§4!$§ = new §-m§(_loc3_.texture);
         this.§4!$§.scaleX = _loc3_.scale;
         this.§4!$§.scaleY = _loc3_.scale;
         this.§[,§();
         this.§@!"§();
         this.§^x§ = new Sprite();
         this.§'6§.addChild(this.§@!$§);
         this.§'6§.addChild(this.§?0§);
         this.§'6§.addChild(this.§^x§);
         this.§'6§.addChild(this.§^H§);
         this.§'6§.addChild(this.§+v§);
         this.§'6§.addChild(this.§4!$§);
         this.§'0§ = this.§else§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : Animation
      {
         return this.§"!>§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §[,§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§>A§ = this.§`!%§;
         this.§@!1§ = this.§else§;
         this.§+8§ = §&!U§.§>U§;
         _loc1_ = null;
      }
      
      protected function §@!"§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§7!I§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §7!I§ = this.§"!>§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§^H§ = new Sprite();
         var _loc1_:§-m§ = new §-m§(§7!I§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§^H§.addChild(_loc1_);
         this.§?0§ = new Sprite();
         this.§[2§ = new §3x§(2,2,§3!4§);
         this.§?0§.addChild(this.§[2§);
         this.§+v§ = new Sprite();
         this.§,!i§ = new §3x§(2,2,§3!4§);
         this.§+v§.addChild(this.§,!i§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§,m§ / LevelMain.§8N§;
         var _loc3_:Number = this.§'?§ / LevelMain.§8N§;
         var _loc4_:Number = 3.5 + 8 * ((this.§+8§ - this.§'H§) / this.§+8§);
         this.§^H§.x = _loc3_;
         this.§^H§.y = _loc2_;
         this.§^H§.rotation = -this.§6a§ / (180 / Math.PI);
         this.§@!$§.x = this.§`!%§ / LevelMain.§8N§ - 3;
         this.§@!$§.y = this.§else§ / LevelMain.§8N§ - 30;
         this.§4!$§.x = this.§`!%§ / LevelMain.§8N§ - 30;
         this.§4!$§.y = this.§else§ / LevelMain.§8N§ - 30;
         this.§+v§.x = this.§`!%§ / LevelMain.§8N§ - 17;
         this.§+v§.y = this.§else§ / LevelMain.§8N§ + 5;
         this.§+v§.rotation = Math.atan2(_loc2_ - this.§+v§.y,_loc3_ - this.§+v§.x);
         this.§?0§.x = this.§`!%§ / LevelMain.§8N§ + 22;
         this.§?0§.y = this.§else§ / LevelMain.§8N§;
         this.§?0§.rotation = Math.atan2(_loc2_ - this.§?0§.y,_loc3_ - this.§?0§.x);
         this.§,!i§.width = Math.sqrt(Math.pow(_loc3_ - this.§+v§.x,2) + Math.pow(_loc2_ - this.§+v§.y,2));
         this.§[2§.width = Math.sqrt(Math.pow(_loc3_ - this.§?0§.x,2) + Math.pow(_loc2_ - this.§?0§.y,2));
         this.§,!i§.height = this.§[2§.height = _loc4_ * 2;
         this.§,!i§.y = -this.§,!i§.height / 2;
         this.§[2§.y = -this.§[2§.height / 2;
         this.§=P§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§#P§.length > 0)
         {
            this.§>!M§(0,true);
         }
         this.§<^§();
         this.§[!?§("BIRD_SARDINE",this.§`!%§,this.§else§);
         this.§'L§(§"o§);
      }
      
      protected function §<^§() : void
      {
         SoundEngine.§9!X§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§'L§(§=!3§);
      }
      
      public function §use§() : void
      {
         this.setNewCoordinatesForRubber(this.§>A§,this.§@!1§ + this.§+8§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§'?§ == param1 && this.§,m§ == param2)
         {
            return true;
         }
         this.§'H§ = Math.sqrt((param2 - this.§@!1§) * (param2 - this.§@!1§) + (param1 - this.§>A§) * (param1 - this.§>A§));
         if(this.§'H§ > this.§+8§)
         {
            if(param3)
            {
               this.§'H§ = Math.sqrt((this.§,m§ - this.§@!1§) * (this.§,m§ - this.§@!1§) + (this.§'?§ - this.§>A§) * (this.§'?§ - this.§>A§));
               return false;
            }
            param1 = this.§>A§ + this.§+8§ * (param1 - this.§>A§) / this.§'H§;
            param2 = this.§@!1§ + this.§+8§ * (param2 - this.§@!1§) / this.§'H§;
            this.§'H§ = this.§+8§;
         }
         this.§'?§ = param1;
         this.§,m§ = param2;
         this.§6a§ = Math.atan2(-(this.§,m§ - this.§@!1§),this.§'?§ - this.§>A§);
         this.§6a§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§'?§ = param1 + this.§#!;§;
            this.§,m§ = param2 + this.§#f§;
            this.§6a§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§+8§ / 2;
         if(this.§'H§ > _loc7_ && this.§6a§ > -90 - _loc4_ + _loc5_ && this.§6a§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§>A§ + _loc7_ * (param1 - this.§>A§) / this.§'H§;
            param2 = this.§@!1§ + _loc7_ * (param2 - this.§@!1§) / this.§'H§;
            this.§'H§ = _loc7_;
            this.§'?§ = param1;
            this.§,m§ = param2;
         }
         else if(this.§'H§ > _loc7_ && this.§6a§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§6a§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§+8§ - _loc7_) * (Math.abs(this.§6a§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§>A§ + _loc8_ * (param1 - this.§>A§) / this.§'H§;
            param2 = this.§@!1§ + _loc8_ * (param2 - this.§@!1§) / this.§'H§;
            this.§'H§ = _loc8_;
            this.§'?§ = param1;
            this.§,m§ = param2;
         }
         if(this.§'H§ <= this.§+8§ * 0.45)
         {
            this.§0!%§ = true;
         }
         else if(this.§0!%§ && this.§'H§ >= this.§+8§ * 0.8)
         {
            this.§8!d§();
            this.§0!%§ = false;
         }
         this.§=P§ = true;
         return true;
      }
      
      protected function §8!d§() : void
      {
         SoundEngine.§9!X§("SlingshotStreched");
      }
      
      public function §3T§(param1:Number) : void
      {
         this.setPosition(this.§`!%§,this.§else§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§`!%§;
         this.§`!%§ = param1;
         var _loc5_:Number = param2 - this.§else§;
         this.§else§ = param2;
         this.§'0§ += _loc5_;
         this.§@!1§ += _loc5_;
         this.§,m§ += _loc5_;
         this.§>A§ += _loc4_;
         this.§'?§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§=P§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:LevelSlingshotObject = null;
         _loc2_ = this.§#P§[this.§@A§];
         var _loc3_:Number = this.§'H§ / this.§+8§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN) : Number(LevelSlingshot.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §?!#§() : Point
      {
         var _loc1_:LevelSlingshotObject = null;
         if(this.§#P§.length > this.§@A§)
         {
            _loc1_ = this.§#P§[this.§@A§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function § case§() : Point
      {
         return new Point(this.§>A§,this.§@!1§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         this.§=!F§(param1);
         if(this.§=P§)
         {
            this.updateAnimations(param1);
         }
         this.§@!_§ -= param1;
         if(this.§@!_§ < 0)
         {
            this.§@!_§ = 0;
         }
         if(this.mSlingShotState != §71§)
         {
            this.§+7§(param1,param2);
            _loc3_ = null;
            if(this.§#P§.length > 0)
            {
               _loc3_ = this.§#P§[this.§@A§];
            }
            if(_loc3_)
            {
               _loc3_.§&!A§(param1);
            }
            if(!_loc3_)
            {
               this.§'L§(§71§);
            }
            else if(this.mSlingShotState == §%l§)
            {
               if(this.§@!_§ <= 0)
               {
                  this.§'L§(§&!+§);
                  _loc3_.§61§();
               }
            }
            else if(this.mSlingShotState == §&!+§)
            {
               if(_loc3_.§%!7§)
               {
                  this.§'L§(§"o§);
               }
            }
            else if(this.mSlingShotState == §"o§)
            {
               _loc3_.setPosition(this.§'?§ - _loc3_.radius * Math.cos(this.§6a§ / (180 / Math.PI)),this.§,m§ + _loc3_.radius * Math.sin(this.§6a§ / (180 / Math.PI)));
               if(this.§"8§)
               {
                  this.§^!&§(this.§'H§ / this.§+8§,this.§6a§);
               }
            }
         }
      }
      
      public function §-O§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:LevelSlingshotObject = null;
         if(this.§#P§.length > 0)
         {
            _loc5_ = this.§#P§[this.§@A§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§^!&§(param3,param4);
      }
      
      protected function §^!&§(param1:Number, param2:Number) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         this.§#!;§ = §2j§;
         this.§#f§ = §+Q§;
         if(this.§#P§.length > 0)
         {
            _loc3_ = this.§#P§[this.§@A§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§"8§ = false;
         this.§<2§ = new Date().time;
         this.§"!>§.§ a§(_loc3_,param1,param2);
         this.§>!M§(this.§@A§,_loc3_.§9S§ > 0);
         this.playBirdShotSound();
         if(this.§@A§ >= this.§#P§.length)
         {
            this.§'L§(§71§);
         }
         else
         {
            this.§'L§(§%l§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         SoundEngine.§9!X§("BirdShot" + _loc1_);
      }
      
      public function §+7§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§@A§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§#P§.length)
         {
            if(this.mSlingShotState == §=!3§)
            {
               this.§#P§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§#P§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:LevelSlingshotObject = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§use§();
         if(this.§5C§ >= this.§#P§.length)
         {
            return false;
         }
         _loc1_ = this.§#P§[this.§5C§];
         _loc2_ = LevelItemManager.§&!i§(_loc1_.name).score;
         this.§"!>§.addScore(_loc2_,ScoreCollector.§0C§,true,_loc1_.x,_loc1_.y - 3,§0'§.§'>§(_loc1_.name));
         _loc1_.§&_§(-1,true);
         ++this.§5C§;
         return true;
      }
      
      public function §<o§() : int
      {
         var _loc2_:LevelSlingshotObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#P§)
         {
            _loc1_ += LevelItemManager.§&!i§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §!!g§() : int
      {
         return this.§+X§;
      }
      
      public function §=!F§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§]§ >= 0)
         {
            this.§]§ -= param1;
            if(this.§]§ <= 0)
            {
               _loc2_ = this.§"!>§.objects.§ !f§(this.§>A§,this.§'0§);
               if(_loc2_ < 0)
               {
                  this.§3T§(0.1);
                  this.§]§ = 0;
               }
               else if(!this.§"!>§.objects.§`T§(_loc2_).§9!-§)
               {
                  this.§]§ = -1;
               }
               else if(this.§"!>§.objects.§`T§(_loc2_).§&E§())
               {
                  this.§]§ = 2000;
               }
               else
               {
                  this.§]§ = 500;
               }
            }
         }
      }
      
      public function §7C§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§"!>§.objects.§ !f§(this.§>A§,this.§'0§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§3T§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§]§ = -1;
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         this.§'6§.x = -param1;
         this.§'6§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §"o§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §"o§ && this.§'H§ > this.§+8§ * §-%§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§'L§(§"o§);
         var _loc1_:LevelSlingshotObject = this.§#P§[this.§@A§];
         _loc1_.§&_§(LevelItemSoundResource.§0A§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:LevelSlingshotObject = this.§#P§[this.§@A§];
         _loc1_.§&_§(LevelItemSoundResource.§;!Z§);
      }
      
      public function shoot() : void
      {
         this.§"8§ = true;
      }
      
      protected function §>!M§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§#P§[param1])
         {
            _loc3_ = this.§#P§[param1];
            this.§^x§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§^!W§(this.§#P§[param1]);
            }
            _loc3_.dispose();
            this.§#P§[param1] = null;
         }
         this.§#P§.splice(param1,1);
      }
      
      public function §^!W§(param1:LevelSlingshotObject) : void
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
            _loc7_ = -param1.sprite.width * LevelMain.§8N§;
            _loc7_ += Math.random() * -_loc7_ * 2;
            _loc8_ = -param1.sprite.height * LevelMain.§8N§;
            _loc8_ += Math.random() * -_loc8_ * 2;
            this.§"!>§.particles.§@4§(§0'§.§@R§,LevelParticleManager.§[K§,§0'§.§&A§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§0'§.§%!`§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§"!>§.particles.§@4§(§0'§.§#!V§,LevelParticleManager.§[K§,§0'§.§&A§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §"!A§(param1:LevelSlingshotObject) : void
      {
         this.§>!M§(this.§#P§.indexOf(param1));
      }
      
      public function §<!i§() : void
      {
         var _loc2_:LevelSlingshotObject = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:LevelSlingshotObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#P§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§`!%§ - this.§#P§[_loc1_].x) * (this.§`!%§ - this.§#P§[_loc1_].x) + (this.§else§ - this.§#P§[_loc1_].y) * (this.§else§ - this.§#P§[_loc1_].y));
            _loc4_ = Math.sqrt((this.§`!%§ - this.§#P§[_loc1_ + 1].x) * (this.§`!%§ - this.§#P§[_loc1_ + 1].x) + (this.§else§ - this.§#P§[_loc1_ + 1].y) * (this.§else§ - this.§#P§[_loc1_ + 1].y));
            if(_loc4_ < _loc3_)
            {
               _loc5_ = this.§#P§[_loc1_];
               this.§#P§.splice(_loc1_,1);
               this.§#P§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§^x§.numChildren > 0)
         {
            this.§^x§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§#P§.length)
         {
            _loc2_ = this.§#P§[_loc1_];
            this.§^x§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §;C§(param1:Number, param2:Number) : LevelSlingshotObject
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§#P§.length)
         {
            if(this.§#P§[_loc3_])
            {
               if(this.§#P§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§#P§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §?!<§(param1:Number, param2:Number) : LevelSlingshot
      {
         if(param1 >= this.§`!%§ - this.§+8§ / 4 && param1 <= this.§`!%§ + this.§+8§ / 4 && param2 >= this.§else§ - this.§+8§ / 4 && this.§else§ <= this.§'0§)
         {
            return this;
         }
         return null;
      }
      
      public function §!!-§(param1:LevelModel) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:§38§ = null;
         param1.§7a§ = this.§`!%§;
         param1.§<7§ = this.§else§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§#P§.length)
         {
            _loc3_ = this.§#P§[_loc2_];
            _loc4_ = new §38§();
            _loc4_.x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§&I§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §5!&§() : void
      {
         while(this.§#P§.length > 0)
         {
            this.§"!A§(this.§#P§[0]);
         }
      }
      
      public function §!!K§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§#P§.length)
         {
            if(this.§#P§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§#P§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§`!%§ > param1.x && this.§`!%§ < param2.x && this.§else§ > param1.y && this.§else§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §4!c§() : Array
      {
         return [this.§4!$§,this.§@!$§];
      }
      
      public function §5!0§(param1:String, param2:Number, param3:Number) : LevelSlingshotObject
      {
         var _loc4_:LevelSlingshotObject = this.§[!?§(param1,param2,param3);
         this.§<!i§();
         return _loc4_;
      }
      
      public function §#b§() : Number
      {
         return this.§#P§.length;
      }
   }
}
