package §?A§
{
   import §#!X§.LevelModel;
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §'N§.Log;
   import §'_§.Texture;
   import §1!&§.§!!9§;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §6Z§.§@x§;
   import §8!?§.§?!B§;
   import §8!?§.Animation;
   import §^L§.LevelItemManager;
   import §^L§.LevelItemSoundResource;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelSlingshot
   {
      
      public static const §=#§:int = 0;
      
      public static const §0C§:int = 1;
      
      public static const §0m§:int = 2;
      
      public static const §<L§:int = 3;
      
      public static const §[D§:int = 5;
      
      public static const §+!%§:int = 3151368;
      
      protected static const §<U§:int = 8;
      
      protected static const §4!<§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §=h§:Number = -0.7;
      
      protected static const §4Q§:Number = 0;
      
      protected static var §?§:Texture;
      
      public static const §2!U§:Number = 0.4;
       
      
      public var §6f§:LevelMain;
      
      public var §`!Z§:Number;
      
      public var §[§:Number;
      
      public var §@=§:Number;
      
      protected var §6=§:Number;
      
      protected var §48§:Number;
      
      protected var §6!R§:Number;
      
      protected var §[m§:Number;
      
      public var §]!5§:Number;
      
      public var §%d§:Boolean = false;
      
      protected var §[!K§:Number;
      
      public var §+I§:Vector.<LevelSlingshotObject>;
      
      public var §=y§:int;
      
      public var §2E§:int;
      
      public var §&V§:Number;
      
      public var §,!d§:Sprite;
      
      public var §>!;§:int = 0;
      
      public var §-§:Number = 0;
      
      public var §^!G§:Array;
      
      public var §^x§:Array;
      
      public var mSlingShotState:int;
      
      public var §@d§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §;!"§:Boolean = false;
      
      public var §!m§:Number;
      
      protected var §1!J§:Sprite;
      
      protected var §>Q§:§!!9§;
      
      protected var §+S§:§!!9§;
      
      protected var §!'§:Sprite;
      
      protected var §0!S§:Sprite;
      
      protected var §<7§:Sprite;
      
      protected var §!!i§:§&p§;
      
      protected var §+!;§:§&p§;
      
      private var §<!!§:Number = 0;
      
      private var §,M§:int = 0;
      
      protected var §0!2§:Number = -0.7;
      
      protected var §7D§:Number = 0;
      
      public function LevelSlingshot(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§@x§ = null;
         this.§+I§ = new Vector.<LevelSlingshotObject>();
         super();
         this.§6f§ = param1;
         this.§1!J§ = param3;
         if(param2)
         {
            this.setPosition(param2.§<!6§,param2.§]!1§);
            this.§>!Z§();
            _loc4_ = 0;
            while(_loc4_ < param2.§1!X§)
            {
               _loc5_ = param2.§`!O§(_loc4_);
               this.§?![§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§,M§ = this.§[!R§();
            this.§=y§ = 0;
            if(this.§+I§.length <= 0)
            {
               Log.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§`!Z§ + " " + this.§[§);
               this.§8!f§(§<L§);
            }
            else
            {
               this.§8!f§(§=#§);
            }
         }
         else
         {
            Log.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§8!f§(§<L§);
         }
         this.§!m§ = 0;
         this.§3!§();
         this.update(0,true);
         this.§+!5§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!J§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§<!!§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§=y§ < this.§+I§.length;
      }
      
      public function dispose() : void
      {
         while(this.§+I§.length > 0)
         {
            this.§,!-§(0);
         }
         this.§+I§ = null;
         if(this.§1!J§)
         {
            this.§1!J§.dispose();
            this.§1!J§ = null;
         }
         this.§,!d§ = null;
         this.§^!G§ = null;
         this.§^x§ = null;
      }
      
      public function §?l§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc5_:LevelSlingshotObject = this.§?![§(param1,param2,param3,param4);
         _loc5_.§import§();
         return _loc5_;
      }
      
      protected function §?![§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc5_:LevelSlingshotObject = new LevelSlingshotObject(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§+I§.push(_loc5_);
         }
         else
         {
            this.§+I§.splice(param4,0,_loc5_);
         }
         this.§,!d§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §8!f§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §=#§)
         {
            this.§7§();
            this.§&V§ = 1000;
         }
         else if(this.mSlingShotState == §0C§)
         {
            this.§7§();
            this.§&V§ = 0;
         }
         else if(this.mSlingShotState == §0m§)
         {
            this.§&V§ = 10000;
            this.§;!"§ = false;
            this.§7§();
         }
         else if(this.mSlingShotState == §<L§)
         {
            this.§7§();
            this.§&V§ = 2000;
         }
         else if(this.mSlingShotState == §[D§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§;!"§ = false;
               this.§7§();
               this.§+I§[this.§=y§].setPosition(this.§6!R§ - this.§+I§[this.§=y§].radius * Math.cos(this.§-§ / (180 / Math.PI)),this.§[m§ + this.§+I§[this.§=y§].radius * Math.sin(this.§-§ / (180 / Math.PI)));
            }
            else
            {
               this.§7§();
            }
         }
         this.mDragging = false;
      }
      
      public function get levelMain() : LevelMain
      {
         return this.§6f§;
      }
      
      public function §9[§() : Boolean
      {
         return this.mSlingShotState == §<L§ && this.§&V§ <= 0;
      }
      
      private function §>!Z§() : void
      {
         var _loc1_:Animation = this.getSlingshotAnimation();
         var _loc2_:§?!B§ = _loc1_.getFrame(0);
         var _loc3_:§?!B§ = _loc1_.getFrame(1);
         this.§!!i§ = new §&p§(_loc2_.texture);
         this.§!!i§.scaleX = _loc2_.scale;
         this.§!!i§.scaleY = _loc2_.scale;
         this.§+!;§ = new §&p§(_loc3_.texture);
         this.§+!;§.scaleX = _loc3_.scale;
         this.§+!;§.scaleY = _loc3_.scale;
         this.§0<§();
         this.§if §();
         this.§,!d§ = new Sprite();
         this.§1!J§.addChild(this.§!!i§);
         this.§1!J§.addChild(this.§!'§);
         this.§1!J§.addChild(this.§,!d§);
         this.§1!J§.addChild(this.§<7§);
         this.§1!J§.addChild(this.§0!S§);
         this.§1!J§.addChild(this.§+!;§);
         this.§@=§ = this.§[§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : Animation
      {
         return this.§6f§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §0<§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§6=§ = this.§`!Z§;
         this.§48§ = this.§[§;
         this.§[!K§ = §5a§.§]!V§;
         _loc1_ = null;
      }
      
      protected function §if §() : void
      {
         var _loc2_:BitmapData = null;
         if(!§?§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §?§ = this.§6f§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§<7§ = new Sprite();
         var _loc1_:§&p§ = new §&p§(§?§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§<7§.addChild(_loc1_);
         this.§!'§ = new Sprite();
         this.§>Q§ = new §!!9§(2,2,§+!%§);
         this.§!'§.addChild(this.§>Q§);
         this.§0!S§ = new Sprite();
         this.§+S§ = new §!!9§(2,2,§+!%§);
         this.§0!S§.addChild(this.§+S§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§[m§ / LevelMain.§!5§;
         var _loc3_:Number = this.§6!R§ / LevelMain.§!5§;
         var _loc4_:Number = 3.5 + 8 * ((this.§[!K§ - this.§]!5§) / this.§[!K§);
         this.§<7§.x = _loc3_;
         this.§<7§.y = _loc2_;
         this.§<7§.rotation = -this.§-§ / (180 / Math.PI);
         this.§!!i§.x = this.§`!Z§ / LevelMain.§!5§ - 3;
         this.§!!i§.y = this.§[§ / LevelMain.§!5§ - 30;
         this.§+!;§.x = this.§`!Z§ / LevelMain.§!5§ - 30;
         this.§+!;§.y = this.§[§ / LevelMain.§!5§ - 30;
         this.§0!S§.x = this.§`!Z§ / LevelMain.§!5§ - 17;
         this.§0!S§.y = this.§[§ / LevelMain.§!5§ + 5;
         this.§0!S§.rotation = Math.atan2(_loc2_ - this.§0!S§.y,_loc3_ - this.§0!S§.x);
         this.§!'§.x = this.§`!Z§ / LevelMain.§!5§ + 22;
         this.§!'§.y = this.§[§ / LevelMain.§!5§;
         this.§!'§.rotation = Math.atan2(_loc2_ - this.§!'§.y,_loc3_ - this.§!'§.x);
         this.§+S§.width = Math.sqrt(Math.pow(_loc3_ - this.§0!S§.x,2) + Math.pow(_loc2_ - this.§0!S§.y,2));
         this.§>Q§.width = Math.sqrt(Math.pow(_loc3_ - this.§!'§.x,2) + Math.pow(_loc2_ - this.§!'§.y,2));
         this.§+S§.height = this.§>Q§.height = _loc4_ * 2;
         this.§+S§.y = -this.§+S§.height / 2;
         this.§>Q§.y = -this.§>Q§.height / 2;
         this.§@d§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§+I§.length > 0)
         {
            this.§,!-§(0,true);
         }
         this.§-!k§();
         this.§?![§("BIRD_SARDINE",this.§`!Z§,this.§[§);
         this.§8!f§(§0m§);
      }
      
      protected function §-!k§() : void
      {
         SoundEngine.§`B§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§8!f§(§[D§);
      }
      
      public function §7§() : void
      {
         this.setNewCoordinatesForRubber(this.§6=§,this.§48§ + this.§[!K§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§6!R§ == param1 && this.§[m§ == param2)
         {
            return true;
         }
         this.§]!5§ = Math.sqrt((param2 - this.§48§) * (param2 - this.§48§) + (param1 - this.§6=§) * (param1 - this.§6=§));
         if(this.§]!5§ > this.§[!K§)
         {
            if(param3)
            {
               this.§]!5§ = Math.sqrt((this.§[m§ - this.§48§) * (this.§[m§ - this.§48§) + (this.§6!R§ - this.§6=§) * (this.§6!R§ - this.§6=§));
               return false;
            }
            param1 = this.§6=§ + this.§[!K§ * (param1 - this.§6=§) / this.§]!5§;
            param2 = this.§48§ + this.§[!K§ * (param2 - this.§48§) / this.§]!5§;
            this.§]!5§ = this.§[!K§;
         }
         this.§6!R§ = param1;
         this.§[m§ = param2;
         this.§-§ = Math.atan2(-(this.§[m§ - this.§48§),this.§6!R§ - this.§6=§);
         this.§-§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§6!R§ = param1 + this.§0!2§;
            this.§[m§ = param2 + this.§7D§;
            this.§-§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§[!K§ / 2;
         if(this.§]!5§ > _loc7_ && this.§-§ > -90 - _loc4_ + _loc5_ && this.§-§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§6=§ + _loc7_ * (param1 - this.§6=§) / this.§]!5§;
            param2 = this.§48§ + _loc7_ * (param2 - this.§48§) / this.§]!5§;
            this.§]!5§ = _loc7_;
            this.§6!R§ = param1;
            this.§[m§ = param2;
         }
         else if(this.§]!5§ > _loc7_ && this.§-§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§-§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§[!K§ - _loc7_) * (Math.abs(this.§-§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§6=§ + _loc8_ * (param1 - this.§6=§) / this.§]!5§;
            param2 = this.§48§ + _loc8_ * (param2 - this.§48§) / this.§]!5§;
            this.§]!5§ = _loc8_;
            this.§6!R§ = param1;
            this.§[m§ = param2;
         }
         if(this.§]!5§ <= this.§[!K§ * 0.45)
         {
            this.§%d§ = true;
         }
         else if(this.§%d§ && this.§]!5§ >= this.§[!K§ * 0.8)
         {
            this.§`h§();
            this.§%d§ = false;
         }
         this.§@d§ = true;
         return true;
      }
      
      protected function §`h§() : void
      {
         SoundEngine.§`B§("SlingshotStreched");
      }
      
      public function §30§(param1:Number) : void
      {
         this.setPosition(this.§`!Z§,this.§[§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§`!Z§;
         this.§`!Z§ = param1;
         var _loc5_:Number = param2 - this.§[§;
         this.§[§ = param2;
         this.§@=§ += _loc5_;
         this.§48§ += _loc5_;
         this.§[m§ += _loc5_;
         this.§6=§ += _loc4_;
         this.§6!R§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§@d§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:LevelSlingshotObject = null;
         _loc2_ = this.§+I§[this.§=y§];
         var _loc3_:Number = this.§]!5§ / this.§[!K§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN) : Number(LevelSlingshot.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §&n§() : Point
      {
         var _loc1_:LevelSlingshotObject = null;
         if(this.§+I§.length > this.§=y§)
         {
            _loc1_ = this.§+I§[this.§=y§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §,!E§() : Point
      {
         return new Point(this.§6=§,this.§48§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         this.§[e§(param1);
         if(this.§@d§)
         {
            this.updateAnimations(param1);
         }
         this.§&V§ -= param1;
         if(this.§&V§ < 0)
         {
            this.§&V§ = 0;
         }
         if(this.mSlingShotState != §<L§)
         {
            this.§>9§(param1,param2);
            _loc3_ = null;
            if(this.§+I§.length > 0)
            {
               _loc3_ = this.§+I§[this.§=y§];
            }
            if(_loc3_)
            {
               _loc3_.§`!d§(param1);
            }
            if(!_loc3_)
            {
               this.§8!f§(§<L§);
            }
            else if(this.mSlingShotState == §=#§)
            {
               if(this.§&V§ <= 0)
               {
                  this.§8!f§(§0C§);
                  _loc3_.§9d§();
               }
            }
            else if(this.mSlingShotState == §0C§)
            {
               if(_loc3_.§@!5§)
               {
                  this.§8!f§(§0m§);
               }
            }
            else if(this.mSlingShotState == §0m§)
            {
               _loc3_.setPosition(this.§6!R§ - _loc3_.radius * Math.cos(this.§-§ / (180 / Math.PI)),this.§[m§ + _loc3_.radius * Math.sin(this.§-§ / (180 / Math.PI)));
               if(this.§;!"§)
               {
                  this.§2!G§(this.§]!5§ / this.§[!K§,this.§-§);
               }
            }
         }
      }
      
      public function §-!+§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:LevelSlingshotObject = null;
         if(this.§+I§.length > 0)
         {
            _loc5_ = this.§+I§[this.§=y§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§2!G§(param3,param4);
      }
      
      protected function §2!G§(param1:Number, param2:Number) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         this.§0!2§ = §=h§;
         this.§7D§ = §4Q§;
         if(this.§+I§.length > 0)
         {
            _loc3_ = this.§+I§[this.§=y§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§;!"§ = false;
         this.§<!!§ = new Date().time;
         this.§6f§.§]!O§(_loc3_,param1,param2);
         this.§,!-§(this.§=y§,_loc3_.§!i§ > 0);
         this.playBirdShotSound();
         if(this.§=y§ >= this.§+I§.length)
         {
            this.§8!f§(§<L§);
         }
         else
         {
            this.§8!f§(§=#§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         SoundEngine.§`B§("BirdShot" + _loc1_);
      }
      
      public function §>9§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§=y§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§+I§.length)
         {
            if(this.mSlingShotState == §[D§)
            {
               this.§+I§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§+I§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:LevelSlingshotObject = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§7§();
         if(this.§2E§ >= this.§+I§.length)
         {
            return false;
         }
         _loc1_ = this.§+I§[this.§2E§];
         _loc2_ = LevelItemManager.§><§(_loc1_.name).score;
         this.§6f§.addScore(_loc2_,ScoreCollector.§+A§,true,_loc1_.x,_loc1_.y - 3,§8!;§.§7!i§(_loc1_.name));
         _loc1_.§,8§(-1,true);
         ++this.§2E§;
         return true;
      }
      
      public function §[!R§() : int
      {
         var _loc2_:LevelSlingshotObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+I§)
         {
            _loc1_ += LevelItemManager.§><§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §5!W§() : int
      {
         return this.§,M§;
      }
      
      public function §[e§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§!m§ >= 0)
         {
            this.§!m§ -= param1;
            if(this.§!m§ <= 0)
            {
               _loc2_ = this.§6f§.objects.§35§(this.§6=§,this.§@=§);
               if(_loc2_ < 0)
               {
                  this.§30§(0.1);
                  this.§!m§ = 0;
               }
               else if(!this.§6f§.objects.§[O§(_loc2_).§-!]§)
               {
                  this.§!m§ = -1;
               }
               else if(this.§6f§.objects.§[O§(_loc2_).§[q§())
               {
                  this.§!m§ = 2000;
               }
               else
               {
                  this.§!m§ = 500;
               }
            }
         }
      }
      
      public function §+!5§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§6f§.objects.§35§(this.§6=§,this.§@=§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§30§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§!m§ = -1;
      }
      
      public function §6!7§(param1:Number, param2:Number) : void
      {
         this.§1!J§.x = -param1;
         this.§1!J§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §0m§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §0m§ && this.§]!5§ > this.§[!K§ * §2!U§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§8!f§(§0m§);
         var _loc1_:LevelSlingshotObject = this.§+I§[this.§=y§];
         _loc1_.§,8§(LevelItemSoundResource.§7d§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:LevelSlingshotObject = this.§+I§[this.§=y§];
         _loc1_.§,8§(LevelItemSoundResource.§0!O§);
      }
      
      public function shoot() : void
      {
         this.§;!"§ = true;
      }
      
      protected function §,!-§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§+I§[param1])
         {
            _loc3_ = this.§+I§[param1];
            this.§,!d§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§6!0§(this.§+I§[param1]);
            }
            _loc3_.dispose();
            this.§+I§[param1] = null;
         }
         this.§+I§.splice(param1,1);
      }
      
      public function §6!0§(param1:LevelSlingshotObject) : void
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
            _loc7_ = -param1.sprite.width * LevelMain.§!5§;
            _loc7_ += Math.random() * -_loc7_ * 2;
            _loc8_ = -param1.sprite.height * LevelMain.§!5§;
            _loc8_ += Math.random() * -_loc8_ * 2;
            this.§6f§.particles.§%!!§(§8!;§.§=!5§,LevelParticleManager.§1!'§,§8!;§.§;Z§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§8!;§.§"K§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§6f§.particles.§%!!§(§8!;§.§,>§,LevelParticleManager.§1!'§,§8!;§.§;Z§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §6T§(param1:LevelSlingshotObject) : void
      {
         this.§,!-§(this.§+I§.indexOf(param1));
      }
      
      public function §3!§() : void
      {
         var _loc2_:LevelSlingshotObject = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:LevelSlingshotObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+I§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§`!Z§ - this.§+I§[_loc1_].x) * (this.§`!Z§ - this.§+I§[_loc1_].x) + (this.§[§ - this.§+I§[_loc1_].y) * (this.§[§ - this.§+I§[_loc1_].y));
            _loc4_ = Math.sqrt((this.§`!Z§ - this.§+I§[_loc1_ + 1].x) * (this.§`!Z§ - this.§+I§[_loc1_ + 1].x) + (this.§[§ - this.§+I§[_loc1_ + 1].y) * (this.§[§ - this.§+I§[_loc1_ + 1].y));
            if(_loc4_ < _loc3_)
            {
               _loc5_ = this.§+I§[_loc1_];
               this.§+I§.splice(_loc1_,1);
               this.§+I§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§,!d§.numChildren > 0)
         {
            this.§,!d§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§+I§.length)
         {
            _loc2_ = this.§+I§[_loc1_];
            this.§,!d§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §9!k§(param1:Number, param2:Number) : LevelSlingshotObject
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§+I§.length)
         {
            if(this.§+I§[_loc3_])
            {
               if(this.§+I§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§+I§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §1!P§(param1:Number, param2:Number) : LevelSlingshot
      {
         if(param1 >= this.§`!Z§ - this.§[!K§ / 4 && param1 <= this.§`!Z§ + this.§[!K§ / 4 && param2 >= this.§[§ - this.§[!K§ / 4 && this.§[§ <= this.§@=§)
         {
            return this;
         }
         return null;
      }
      
      public function §"t§(param1:LevelModel) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:§@x§ = null;
         param1.§<!6§ = this.§`!Z§;
         param1.§]!1§ = this.§[§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§+I§.length)
         {
            _loc3_ = this.§+I§[_loc2_];
            _loc4_ = new §@x§();
            _loc4_.x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§;!H§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §2F§() : void
      {
         while(this.§+I§.length > 0)
         {
            this.§6T§(this.§+I§[0]);
         }
      }
      
      public function §?!]§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§+I§.length)
         {
            if(this.§+I§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§+I§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§`!Z§ > param1.x && this.§`!Z§ < param2.x && this.§[§ > param1.y && this.§[§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §+i§() : Array
      {
         return [this.§+!;§,this.§!!i§];
      }
      
      public function §+!7§(param1:String, param2:Number, param3:Number) : LevelSlingshotObject
      {
         var _loc4_:LevelSlingshotObject = this.§?![§(param1,param2,param3);
         this.§3!§();
         return _loc4_;
      }
      
      public function §+F§() : Number
      {
         return this.§+I§.length;
      }
   }
}
