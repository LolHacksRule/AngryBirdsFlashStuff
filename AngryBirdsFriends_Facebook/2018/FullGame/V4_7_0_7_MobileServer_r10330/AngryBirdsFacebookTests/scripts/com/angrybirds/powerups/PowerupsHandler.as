package com.angrybirds.powerups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.AimingLine;
   import com.angrybirds.engine.AimingLineFriends;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.FacebookLevelSlingshot;
   import com.angrybirds.engine.FacebookLevelSlingshotObject;
   import com.angrybirds.engine.LevelEngineBox2D;
   import com.angrybirds.engine.LevelSlingshot;
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.angrybirds.engine.Tuner;
   import com.angrybirds.engine.TunerFriends;
   import com.angrybirds.engine.camera.FacebookLevelCamera;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.engine.controllers.FacebookGameLogicController;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.engine.objects.FacebookLevelObjectManager;
   import com.angrybirds.engine.objects.GravityFilterCategory;
   import com.angrybirds.engine.objects.ILevelObjectUpdateManager;
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectBlock;
   import com.angrybirds.engine.objects.LevelObjectBombPowerup;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import com.angrybirds.engine.objects.LevelObjectPig;
   import com.angrybirds.engine.particles.FacebookLevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.slingshots.SlingShotType;
   import com.angrybirds.slingshots.SlingShotUIManager;
   import com.angrybirds.states.StateFacebookPlay;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.sound.SoundEffect;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import starling.display.Sprite;
   
   public class PowerupsHandler extends EventDispatcher
   {
      
      private static const POWERUP_POTION_PARTICLE_TIME:Number = 500;
       
      
      private var mAimingLine:AimingLine;
      
      protected var mIsShowingAimingLine:Boolean = false;
      
      private var mEarthquakeCurrentStep:int = -1;
      
      private var mEarthquakeRandomOffset:Number;
      
      private var mMushroomGrowTimer:int;
      
      private var mPostZoomPowerupFunction:Function;
      
      private var mPendingPowerups:Array;
      
      private var mCurrentPendingPowerupTimeLeft:Number = -1;
      
      private var mBombPowerup:LevelObjectBombPowerup;
      
      private var mBombTimeToExplode:Number = -1;
      
      private var mFuseSoundEffect:SoundEffect;
      
      private var mBombPowerupObjects:Vector.<LevelObjectBombPowerup>;
      
      private var mChristmasBirdJumpTween:ISimpleTween = null;
      
      private var mWingmanBirdJumpTween:ISimpleTween = null;
      
      private var mPowerupRequestQueue:Vector.<PowerupRequest>;
      
      private var mCurrentPowerupRequest:PowerupRequest;
      
      private var mController:FacebookGameLogicController;
      
      private var mLevelManager:LevelManager;
      
      private var mUsedPowerups:Array;
      
      private var mWingmanUsed:Boolean = false;
      
      private var hasAddedParticles:Boolean;
      
      private var mPowerupParticleTimer:Number = 500;
      
      private var mWaitingForBirdGrowing:Boolean;
      
      public function PowerupsHandler(levelManager:LevelManager)
      {
         this.mPendingPowerups = [];
         this.mPowerupRequestQueue = new Vector.<PowerupRequest>();
         super();
         this.mLevelManager = levelManager;
      }
      
      public function get pendingRequestCount() : int
      {
         return this.mPowerupRequestQueue.length;
      }
      
      public function init() : void
      {
         this.mEarthquakeCurrentStep = -1;
         this.mCurrentPendingPowerupTimeLeft = -1;
         this.mBombTimeToExplode = -1;
         this.mBombPowerup = null;
         this.mPostZoomPowerupFunction = null;
         this.mPendingPowerups = [];
         this.mController.mouseEnabled = true;
         this.mWaitingForBirdGrowing = false;
         this.mMushroomGrowTimer = 0;
         this.mBombPowerupObjects = new Vector.<LevelObjectBombPowerup>();
         var dotTexture:PivotTexture = this.mController.levelMain.textureManager.getTexture("LASER_DOT");
         if(this.mAimingLine)
         {
            this.mAimingLine.dispose();
         }
         this.mAimingLine = new AimingLineFriends(this.mController,new Sprite(),dotTexture.texture,0,0);
         AngryBirdsEngine.smLevelMain.objects.backgroundSprite.addChild(this.mAimingLine.sprite);
         this.setAimingLineTexture();
      }
      
      public function reset() : void
      {
         while(this.mPowerupRequestQueue.length > 0)
         {
            this.mPowerupRequestQueue.shift();
         }
         if(this.mCurrentPowerupRequest)
         {
            this.removeURLLoaderListeners(this.mCurrentPowerupRequest.urlLoader);
            try
            {
               this.mCurrentPowerupRequest.urlLoader.close();
            }
            catch(e:Error)
            {
            }
            this.mCurrentPowerupRequest = null;
         }
      }
      
      public function setController(controller:FacebookGameLogicController) : void
      {
         if(this.mController == controller)
         {
            return;
         }
         this.mController = controller;
         this.init();
      }
      
      public function run(deltaTime:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var bird:FacebookLevelSlingshotObject = null;
         var nextPowerup:Object = null;
         if(!this.mController)
         {
            return;
         }
         this.updateBomb(deltaTime);
         this.updateLaserSight(deltaTime,updateManager);
         var slingshotBirds:Vector.<LevelSlingshotObject> = this.mController.levelMain.slingshot.mBirds;
         if(slingshotBirds.length > 0)
         {
            bird = slingshotBirds[this.mController.levelMain.slingshot.mNextBirdIndex] as FacebookLevelSlingshotObject;
            if(bird.powerUpSuperSeedUsed)
            {
               this.updatePowerupParticles(deltaTime,updateManager);
            }
         }
         if(!this.mIsShowingAimingLine)
         {
            this.updateSpecialSight(deltaTime,updateManager);
         }
         var birdIsReady:Boolean = (AngryBirdsEngine.smLevelMain.slingshot as FacebookLevelSlingshot).mSlingShotState == LevelSlingshot.STATE_BIRD_IS_READY || (AngryBirdsEngine.smLevelMain.slingshot as FacebookLevelSlingshot).mSlingShotState == FacebookLevelSlingshot.STATE_WAITING_FOR_WINGMAN;
         if(this.mCurrentPendingPowerupTimeLeft > 0)
         {
            if(this.mPostZoomPowerupFunction != this.doGrow || this.mPostZoomPowerupFunction == this.doGrow && birdIsReady)
            {
               this.mCurrentPendingPowerupTimeLeft -= deltaTime;
            }
            if(this.mCurrentPendingPowerupTimeLeft <= 0)
            {
               this.mPostZoomPowerupFunction();
               this.mPostZoomPowerupFunction = null;
               this.mController.mouseEnabled = true;
               if(this.mPendingPowerups.length > 0)
               {
                  nextPowerup = this.mPendingPowerups.shift();
                  this.doZoomThenPowerup(nextPowerup.powerupFunction,nextPowerup.gotoCastleSide);
               }
            }
         }
      }
      
      private function updatePowerupParticles(deltaTime:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var slingshot:FacebookLevelSlingshot = null;
         var slingshotBirds:Vector.<LevelSlingshotObject> = null;
         var bird:FacebookLevelSlingshotObject = null;
         var particleManager:FacebookLevelParticleManager = null;
         var scale:Number = NaN;
         if(!this.hasAddedParticles)
         {
            this.hasAddedParticles = true;
            slingshot = this.mController.levelMain.slingshot as FacebookLevelSlingshot;
            slingshotBirds = slingshot.mBirds;
            bird = slingshotBirds[slingshot.mNextBirdIndex] as FacebookLevelSlingshotObject;
            particleManager = AngryBirdsEngine.smLevelMain.particles as FacebookLevelParticleManager;
            scale = 0.4;
            particleManager.addPowerPotionParticle(bird.x + bird.radius,bird.y - bird.radius,scale,0,0,(3 + Math.random() * 4) * -1,bird.radius);
         }
         if(this.hasAddedParticles)
         {
            this.mPowerupParticleTimer -= deltaTime;
            if(this.mPowerupParticleTimer <= 0)
            {
               this.mPowerupParticleTimer = POWERUP_POTION_PARTICLE_TIME + Math.random() * 300;
               this.hasAddedParticles = false;
            }
         }
      }
      
      protected function updateLaserSight(deltaTime:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var slingshot:FacebookLevelSlingshot = null;
         var startPoint:Point = null;
         var speedX:Number = NaN;
         var speedY:Number = NaN;
         var birdUnAffectedByGravity:* = false;
         if(this.mIsShowingAimingLine)
         {
            slingshot = this.mController.levelMain.slingshot as FacebookLevelSlingshot;
            startPoint = slingshot.getPosition();
            if(slingshot.canShootTheBird && startPoint != null && slingshot.mDragging)
            {
               speedX = -Math.cos(slingshot.shootingAngle / 180 * Math.PI);
               speedY = Math.sin(slingshot.shootingAngle / 180 * Math.PI);
               birdUnAffectedByGravity = slingshot.activatedSlingShotType.getBirdGravityFilter() == GravityFilterCategory.BIRD_UNAFFECTED_BY_GRAVITY;
               this.mAimingLine.showLine(startPoint,new Point(speedX,speedY),slingshot.getLaunchSpeed(),updateManager,10,birdUnAffectedByGravity,false,22);
               this.mAimingLine.enabled = true;
            }
            else
            {
               this.mAimingLine.enabled = false;
            }
         }
      }
      
      protected function updateSpecialSight(deltaTime:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var slingshot:FacebookLevelSlingshot = null;
         var startPoint:Point = null;
         var speedX:Number = NaN;
         var speedY:Number = NaN;
         var birdUnAffectedByGravity:* = false;
         if(SlingShotUIManager.getSelectedSlingShotId() == SlingShotType.SLING_SHOT_CHRISTMAS.identifier)
         {
            slingshot = this.mController.levelMain.slingshot as FacebookLevelSlingshot;
            startPoint = slingshot.getPosition();
            if(slingshot.getPosition())
            {
               startPoint = new Point(slingshot.getPosition().x - Math.cos(slingshot.shootingAngle / 180 * Math.PI) * 4,slingshot.getPosition().y + Math.sin(slingshot.shootingAngle / 180 * Math.PI) * 4);
            }
            if(slingshot.canShootTheBird && startPoint != null && slingshot.mDragging)
            {
               speedX = -Math.cos(slingshot.shootingAngle / 180 * Math.PI);
               speedY = Math.sin(slingshot.shootingAngle / 180 * Math.PI);
               birdUnAffectedByGravity = slingshot.activatedSlingShotType.getBirdGravityFilter() == GravityFilterCategory.BIRD_UNAFFECTED_BY_GRAVITY;
               this.mAimingLine.showLine(startPoint,new Point(speedX,speedY),slingshot.getLaunchSpeed(),updateManager,16,birdUnAffectedByGravity,true,64);
               this.mAimingLine.enabled = true;
            }
            else
            {
               this.mAimingLine.enabled = false;
            }
         }
      }
      
      protected function updateBomb(deltaTime:Number) : void
      {
         var i:int = 0;
         var bomb:LevelObjectBombPowerup = null;
         if(this.mBombPowerupObjects)
         {
            for(i = this.mBombPowerupObjects.length - 1; i >= 0; i--)
            {
               bomb = this.mBombPowerupObjects[i];
               if(bomb)
               {
                  if(bomb.isFinished)
                  {
                     this.mBombPowerupObjects.splice(i,1);
                  }
                  else
                  {
                     bomb.updateBomb(deltaTime,AngryBirdsEngine.smLevelMain.levelObjects);
                  }
               }
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var mightyEagleUsesLeft:int = ItemsInventory.instance.getCountForPowerup(PowerupType.sMightyEagle.identifier);
         if(mightyEagleUsesLeft <= 0)
         {
            return false;
         }
         this.mController.stopEndLevelWhenFailing();
         this.cleanUpJumpTween();
         ItemsInventory.instance.usePowerup(PowerupType.sMightyEagle.identifier);
         this.requestPowerup(PowerupType.sMightyEagle.identifier);
         this.doZoomThenPowerup(this.doMightyEagle,false);
         return true;
      }
      
      private function doMightyEagle() : void
      {
         var currentLevel:String = this.mLevelManager.currentLevel;
         var currentChapter:String = this.mLevelManager.getCurrentEpisodeModel().name;
         FacebookGoogleAnalyticsTracker.trackPowerupUsedEvent(PowerupType.sMightyEagle.identifier,currentLevel);
         var slingshot:FacebookLevelSlingshot = AngryBirdsEngine.smLevelMain.slingshot as FacebookLevelSlingshot;
         if(slingshot.mSlingShotState == LevelSlingshot.STATE_BIRDS_ARE_GONE)
         {
            slingshot.setSlingShotState(LevelSlingshot.STATE_BIRD_IS_READY);
         }
      }
      
      public function update(deltaTimeMilliSeconds:Number) : void
      {
         this.updateEarthquake(deltaTimeMilliSeconds);
         this.updateMushroomGrowthCheck(deltaTimeMilliSeconds);
      }
      
      private function updateMushroomGrowthCheck(deltaTime:Number) : void
      {
         if(this.mMushroomGrowTimer > 0)
         {
            this.mMushroomGrowTimer -= deltaTime;
         }
      }
      
      protected function updateEarthquake(deltaTime:Number) : void
      {
         var xGravityScale:Number = NaN;
         var xGravity:Number = NaN;
         var newGravity:b2Vec2 = null;
         if(this.mEarthquakeCurrentStep >= 0 && this.mEarthquakeCurrentStep < TunerFriends.EARTHQUAKE_TOTAL_STEPS)
         {
            xGravityScale = Math.sin(this.mEarthquakeCurrentStep / TunerFriends.EARTHQUAKE_TOTAL_STEPS * (Math.PI * TunerFriends.EARTHQUAKE_SWINGS) + this.mEarthquakeRandomOffset);
            xGravity = xGravityScale * TunerFriends.EARTHQUAKE_MAGNITUDE;
            newGravity = new b2Vec2(xGravity,this.mController.levelMain.mLevelEngine.mWorld.GetGravity().y);
            this.mController.levelMain.mLevelEngine.mWorld.SetGravity(newGravity);
            ++this.mEarthquakeCurrentStep;
            this.generateEarthquakeParticles();
         }
         else if(this.mEarthquakeCurrentStep == TunerFriends.EARTHQUAKE_TOTAL_STEPS)
         {
            this.mEarthquakeCurrentStep = -1;
            AngryBirdsEngine.smLevelMain.mLevelEngine.mWorld.SetGravity(new b2Vec2(0,this.mController.levelMain.mLevelEngine.mWorld.GetGravity().y));
         }
      }
      
      private function generateEarthquakeParticles() : void
      {
         var cameraCenterX:Number = this.mController.levelMain.camera.centerX;
         var screenWidth:Number = LevelCamera.SCREEN_WIDTH_B2 / LevelCamera.levelScale;
         var screenHeight:Number = LevelCamera.SCREEN_HEIGHT_B2 / LevelCamera.levelScale;
         var randomOnscreenX:Number = cameraCenterX + (Math.random() - 0.5) * screenWidth;
         var particleManager:FacebookLevelParticleManager = this.mController.levelMain.particles as FacebookLevelParticleManager;
         if(this.mEarthquakeCurrentStep % 2)
         {
            particleManager.addEarthquakeCloudParticle(randomOnscreenX,this.mController.levelMain.borders.ground);
         }
         randomOnscreenX = cameraCenterX + (Math.random() - 0.5) * screenWidth;
         particleManager.addEarthquakeStoneParticle(randomOnscreenX,this.mController.levelMain.borders.ground + Math.random() * screenHeight / 20);
      }
      
      public function isEarthquakeActive() : Boolean
      {
         return this.mEarthquakeCurrentStep > -1;
      }
      
      public function isMushroomActive() : Boolean
      {
         return this.mMushroomGrowTimer > 0;
      }
      
      private function doZoomThenPowerup(powerupFunction:Function, gotoCastleSide:Boolean = true) : void
      {
         if(this.mPostZoomPowerupFunction != null)
         {
            this.mPendingPowerups.push({
               "powerupFunction":powerupFunction,
               "gotoCastleSide":gotoCastleSide
            });
         }
         else
         {
            this.mPostZoomPowerupFunction = powerupFunction;
            (AngryBirdsEngine.controller as GameLogicController).mouseEnabled = false;
            this.mCurrentPendingPowerupTimeLeft = powerupFunction == this.doGrow ? Number(Tuner.TIME_FOR_ZOOM_BEFORE_ACTIVATING_POWERUP * 1.5) : Number(Tuner.TIME_FOR_ZOOM_BEFORE_ACTIVATING_POWERUP);
            this.mController.levelMain.camera.setAction(!!gotoCastleSide ? int(LevelCamera.ACTION_GO_TO_CASTLE) : int(LevelCamera.ACTION_GO_TO_SLINGSHOT));
            this.startPowerUpIntroAnimation(this.mPostZoomPowerupFunction);
         }
      }
      
      protected function startPowerUpIntroAnimation(powerupFunction:Function) : void
      {
         var powerupType:String = null;
         switch(powerupFunction)
         {
            case this.doGrow:
               powerupType = PowerupType.sBirdFood.identifier;
               break;
            case this.doEarthquake:
               powerupType = PowerupType.sEarthquake.identifier;
               break;
            case this.doSpeed:
               powerupType = PowerupType.sExtraSpeed.identifier;
               break;
            case this.doBoombox:
               powerupType = PowerupType.sBoombox.identifier;
               break;
            case this.doLaserSight:
               powerupType = PowerupType.sLaserSight.identifier;
               break;
            case this.doChristmasBird:
               powerupType = PowerupType.sExtraBird.identifier;
               break;
            case this.doBomb:
               powerupType = PowerupType.sTntDrop.identifier;
               break;
            case this.doPumpkinDrop:
               powerupType = PowerupType.sPumpkinDrop.identifier;
               break;
            case this.doWingman:
               powerupType = PowerupType.sExtraBird.identifier;
               break;
            case this.doMushRoom:
               powerupType = PowerupType.sMushroom.identifier;
         }
         var facebookPlayState:StateFacebookPlay = AngryBirdsBase.singleton.getCurrentStateObject() as StateFacebookPlay;
         if(facebookPlayState && powerupType)
         {
            dispatchEvent(new PowerupEvent(PowerupEvent.START_ANIMATION,powerupType));
            if(powerupType == PowerupType.sExtraBird.identifier)
            {
               SoundEngine.playSound("wingman_animation","ChannelPowerups");
            }
            else if(powerupType == PowerupType.sPumpkinDrop.identifier)
            {
               SoundEngine.playSound("pumpkin_activation","ChannelPowerups");
            }
            else
            {
               SoundEngine.playSound("powerup_intro","ChannelPowerups");
            }
         }
         else
         {
            SoundEngine.playSound("powerup_intro","ChannelPowerups");
         }
      }
      
      private function doGrow() : void
      {
         var slingshotObject:FacebookLevelSlingshotObject = null;
         var featherCount:int = 0;
         var featherBaseSpeed:int = 0;
         var scale:Number = NaN;
         var i:int = 0;
         var angle2:Number = NaN;
         var featherSpeed:Number = NaN;
         var birdname:String = null;
         var slingshot:FacebookLevelSlingshot = this.mController.levelMain.slingshot as FacebookLevelSlingshot;
         var slingshotBirds:Vector.<LevelSlingshotObject> = slingshot.mBirds;
         var power:Number = TunerFriends.POWERUP_GROW_SCALE_DEFAULT;
         if(slingshotBirds.length > 0 && slingshot.mNextBirdIndex < slingshotBirds.length)
         {
            slingshotObject = slingshotBirds[slingshot.mNextBirdIndex] as FacebookLevelSlingshotObject;
            slingshotObject.powerUpSuperSeedUsed = true;
            switch(slingshotObject.name)
            {
               case "BIRD_BLACK":
                  power = TunerFriends.POWERUP_GROW_SCALE_BLACK;
                  break;
               case "BIRD_BLUE":
                  power = TunerFriends.POWERUP_GROW_SCALE_BLUE;
                  break;
               case "BIRD_GREEN":
                  power = TunerFriends.POWERUP_GROW_SCALE_GREEN;
                  break;
               case "BIRD_WHITE":
                  power = TunerFriends.POWERUP_GROW_SCALE_WHITE;
                  break;
               case "BIRD_YELLOW":
                  power = TunerFriends.POWERUP_GROW_SCALE_YELLOW;
                  break;
               case "BIRD_RED":
                  power = TunerFriends.POWERUP_GROW_SCALE_RED;
                  break;
               case "BIRD_ORANGE":
                  power = TunerFriends.POWERUP_GROW_SCALE_ORANGE;
                  break;
               case "BIRD_RED_BIG":
                  power = TunerFriends.POWERUP_GROW_SCALE_RED_BIG;
                  break;
               case "BIRD_WINGMAN":
                  power = TunerFriends.POWERUP_GROW_SCALE_WINGMAN;
                  break;
               case "BIRD_SARDINE":
                  power = 1;
                  slingshotObject.powerUpSuperSeedUsed = false;
                  break;
               case "POWERUP_BOOMBOX":
                  power = TunerFriends.POWERUP_GROW_SCALE_BOOMBOX;
            }
         }
         SoundEngine.playSound("big_bird","ChannelPowerups");
         slingshot.setPower(power,PowerupType.sBirdFood);
         if(slingshotBirds.length > 0)
         {
            featherCount = 5 + Math.random() * 10;
            featherBaseSpeed = 8;
            scale = 1;
            for(i = 0; i < featherCount; i++)
            {
               angle2 = Math.random() * (Math.PI * 2);
               featherSpeed = 0.5 * featherBaseSpeed + featherBaseSpeed * (Math.random() * 0.5);
               birdname = slingshotBirds[0].name;
               if(birdname == "POWERUP_BOOMBOX")
               {
                  this.mController.levelMain.particles.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,slingshot.x,slingshot.y,1250,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_WOOD,featherSpeed * Math.cos(angle2),-featherSpeed * Math.sin(angle2),10,featherSpeed * 50);
               }
               else
               {
                  if(birdname == "BIRD_WINGMAN")
                  {
                     birdname = "BIRD_RED";
                  }
                  this.mController.levelMain.particles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,slingshot.x,slingshot.y,1250,"",LevelParticle.getParticleMaterialFromEngineMaterial(birdname),featherSpeed * Math.cos(angle2) * scale,-featherSpeed * Math.sin(angle2) * scale,5,featherSpeed * 20,Math.sqrt(scale));
               }
            }
         }
         this.doPowerPotionBlast();
         this.mWaitingForBirdGrowing = false;
      }
      
      private function undoGrow() : void
      {
         var slingshotObject:FacebookLevelSlingshotObject = null;
         var slingshot:FacebookLevelSlingshot = this.mController.levelMain.slingshot as FacebookLevelSlingshot;
         var slingshotBirds:Vector.<LevelSlingshotObject> = slingshot.mBirds;
         if(slingshotBirds.length > 0 && slingshot.mNextBirdIndex < slingshotBirds.length)
         {
            slingshotObject = slingshotBirds[slingshot.mNextBirdIndex] as FacebookLevelSlingshotObject;
            slingshotObject.powerUpSuperSeedUsed = false;
            slingshotObject.powerUpDamageMultiplier = null;
            slingshotObject.powerUpVelocityMultiplier = null;
            slingshotObject.scale = 1;
            slingshotObject.sprite.scaleX = slingshotObject.scale;
            slingshotObject.sprite.scaleY = slingshotObject.scale;
         }
         this.mWaitingForBirdGrowing = false;
      }
      
      public function doPowerPotionBlast() : void
      {
         var slingshot:FacebookLevelSlingshot = this.mController.levelMain.slingshot as FacebookLevelSlingshot;
         var slingshotBirds:Vector.<LevelSlingshotObject> = slingshot.mBirds;
         var bird:FacebookLevelSlingshotObject = slingshotBirds[slingshot.mNextBirdIndex] as FacebookLevelSlingshotObject;
         AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_BACKGROUND_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,bird.x,bird.y - bird.radius,400,"",LevelParticle.PARTICLE_MATERIAL_PIGS,0,0,0,0,1,8,true);
         if(slingshotBirds.length > 0)
         {
            FacebookLevelMain.addBubbleParticles(bird.x,bird.y,40,0,40);
         }
         (this.mController.levelMain.slingshot as FacebookLevelSlingshot).addPowerPotionAnimation(bird.x,bird.y);
      }
      
      private function completeBurpAnimation() : void
      {
         var slingshot:FacebookLevelSlingshot = this.mController.levelMain.slingshot as FacebookLevelSlingshot;
         slingshot.setSlingShotState(LevelSlingshot.STATE_BIRD_IS_READY);
      }
      
      private function doSpeed() : void
      {
         SoundEngine.playSound("super_slingshot","ChannelPowerups");
         (this.mController.levelMain.slingshot as FacebookLevelSlingshot).activateSuperSlingshot();
      }
      
      private function doLaserSight() : void
      {
         this.mIsShowingAimingLine = true;
         this.setAimingLineTexture();
         SoundEngine.playSound("laser_sight","ChannelPowerups");
         (this.mController.levelMain.slingshot as FacebookLevelSlingshot).installTelescope();
      }
      
      private function doBomb() : void
      {
         var pig:LevelObject = null;
         var bombX:Number = NaN;
         var bombY:Number = NaN;
         var bomb:LevelObjectBombPowerup = null;
         var mousePoint:Point = this.mController.getMouseScreenCoordinates();
         mousePoint = this.mController.levelMain.screenToBox2D(mousePoint.x,mousePoint.y);
         this.mFuseSoundEffect = SoundEngine.playSound("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         var borderLeft:Number = (this.mController.levelMain.camera as FacebookLevelCamera).getCastleCameraBorderLeft() + Tuner.POWERUP_BOMB_MAX_DISTANCE_FROM_PIG / 2;
         var borderRight:Number = (this.mController.levelMain.camera as FacebookLevelCamera).getCastleCameraBorderRight() + Tuner.POWERUP_BOMB_MAX_DISTANCE_FROM_PIG / 2;
         var screenTopY:Number = this.mController.levelMain.screenToBox2D(0,0).y;
         var skyBorder:Number = -20;
         skyBorder = skyBorder < screenTopY ? Number(skyBorder) : Number(screenTopY);
         var pigs:Vector.<LevelObject> = this.getLevelObjectManager().getRandomUniquePigs(3);
         for(var i:int = 0; i < 3; i++)
         {
            pig = pigs[i];
            bombY = skyBorder - (Math.random() * 30 + i * 10);
            if(pig == null)
            {
               bombX = borderLeft + (borderRight - borderLeft) * Math.random();
            }
            else
            {
               bombX = pig.worldX + (Math.random() * Tuner.POWERUP_BOMB_MAX_DISTANCE_FROM_PIG - Tuner.POWERUP_BOMB_MAX_DISTANCE_FROM_PIG / 2);
            }
            bomb = this.getLevelObjectManager().addBombPowerup(bombX,bombY,0);
            this.mBombPowerupObjects[i] = bomb;
         }
      }
      
      private function doPumpkinDrop() : void
      {
         var x:Number = NaN;
         var y:Number = NaN;
         var outOfBounds:Boolean = false;
         var borderLeft:Number = (this.mController.levelMain.camera as FacebookLevelCamera).getCastleCameraBorderLeft() + Tuner.POWERUP_BOMB_MAX_DISTANCE_FROM_PIG / 2;
         var borderRight:Number = (this.mController.levelMain.camera as FacebookLevelCamera).getCastleCameraBorderRight() + Tuner.POWERUP_BOMB_MAX_DISTANCE_FROM_PIG / 2;
         var screenTopY:Number = this.mController.levelMain.screenToBox2D(0,0).y;
         var skyBorder:Number = -20;
         skyBorder = skyBorder < screenTopY ? Number(skyBorder) : Number(screenTopY);
         var castleCameraWidth:Number = borderRight - borderLeft;
         var pumpkinSpawnAreaWidth:Number = castleCameraWidth / (5 + 1);
         for(var i:int = 0; i < 5; i++)
         {
            x = borderLeft + pumpkinSpawnAreaWidth + i * pumpkinSpawnAreaWidth;
            y = skyBorder - Math.random() * 30;
            outOfBounds = this.getLevelObjectManager().locationIsOutOfBounds(x,y);
            while(outOfBounds)
            {
               y++;
               outOfBounds = this.getLevelObjectManager().locationIsOutOfBounds(x,y);
            }
            AngryBirdsEngine.smLevelMain.levelObjects.addObject("POWERUP_PUMPKIN",x,y,Math.random() * 360,LevelObjectManager.ID_NEXT_FREE,false,false,false,1,false,false,(Math.random() - 0.5) * 10,new b2Vec2((Math.random() - 0.5) * 10,0));
         }
      }
      
      private function doEarthquake() : void
      {
         var obj:LevelObject = null;
         this.mController.increaseEndLevelTimer(Math.round(LevelEngineBox2D.UPDATE_TIME_STEP_MILLISECONDS * TunerFriends.EARTHQUAKE_TOTAL_STEPS));
         SoundEngine.playSound("earthquake","ChannelPowerups");
         this.mEarthquakeCurrentStep = 0;
         this.mEarthquakeRandomOffset = Math.random() * (Math.PI * 2);
         var objectCount:int = this.getLevelObjectManager().getObjectCount();
         for(var i:int = 0; i < objectCount; i++)
         {
            obj = this.getLevelObjectManager().getObject(i) as LevelObject;
            if(obj is LevelObjectBlock || obj is LevelObjectPig)
            {
               obj.getBody().SetAwake(true);
               if(obj is LevelObjectPig)
               {
                  obj.scream();
                  obj.playSpecialSound();
               }
            }
         }
         var frequency:Number = Tuner.MIGHTY_EAGLE_CAMERA_SHAKING_START_FREQUENCY;
         var amplitude:Number = Tuner.MIGHTY_EAGLE_CAMERA_SHAKING_START_AMPLITUDE;
         var duration:Number = Tuner.MIGHTY_EAGLE_CAMERA_SHAKING_DURATION;
         this.mController.levelMain.setCameraShaking(true,frequency,amplitude,duration);
         this.mController.levelMain.startShadingEffect();
      }
      
      private function doChristmasBird() : void
      {
         var bird:LevelSlingshotObject = null;
         var birdX:Number = NaN;
         var distance:Number = NaN;
         var slingshot:LevelSlingshot = this.mController.levelMain.slingshot;
         if(slingshot.mBirds.length > 0 && slingshot.mNextBirdIndex < slingshot.mBirds.length)
         {
            bird = slingshot.mBirds[slingshot.mNextBirdIndex];
            birdX = bird.originalX;
            if(bird)
            {
               distance = slingshot.x - bird.originalX;
               if(distance < 1.5 && distance > 0)
               {
                  birdX = slingshot.x - 1.5;
               }
               bird.fallFromSlingshot();
               this.mChristmasBirdJumpTween = (bird as FacebookLevelSlingshotObject).jumpTweenToPosition(birdX,bird.originalY);
            }
         }
         var addedBird:LevelSlingshotObject = this.mController.levelMain.slingshot.addBirdStraightIntoSlingshot("BIRD_CHRISTMAS",slingshot.x + 0.7,slingshot.y + 0.1,0);
         SoundEngine.playSound("Sound_Santa_Bomb_Bird_Arrival");
         this.mController.resetToSlingShotState();
      }
      
      private function doWingman() : void
      {
         this.mController.stopEndLevelWhenFailing();
         var slingshot:FacebookLevelSlingshot = AngryBirdsEngine.smLevelMain.slingshot as FacebookLevelSlingshot;
         if(slingshot.addWingmanAppearEffect())
         {
            this.doGrow();
         }
         slingshot.setSlingShotState(LevelSlingshot.STATE_BIRD_IS_READY);
      }
      
      private function doBoombox() : void
      {
         var bird:FacebookLevelSlingshotObject = null;
         var birdOriginalX:Number = NaN;
         var birdOriginalY:Number = NaN;
         this.mController.stopEndLevelWhenFailing();
         var slingshot:FacebookLevelSlingshot = AngryBirdsEngine.smLevelMain.slingshot as FacebookLevelSlingshot;
         var useSuperseed:Boolean = false;
         if(slingshot.mBirds.length > 0 && slingshot.mNextBirdIndex < slingshot.mBirds.length)
         {
            bird = slingshot.mBirds[slingshot.mNextBirdIndex] as FacebookLevelSlingshotObject;
            if(bird.powerUpSuperSeedUsed)
            {
               this.mWaitingForBirdGrowing = true;
               this.undoGrow();
               useSuperseed = true;
            }
            birdOriginalX = bird.originalX;
            birdOriginalY = bird.originalY;
            if(bird.name == "BIRD_WINGMAN")
            {
               birdOriginalX = slingshot.getWingmanJumpOffCoordinates().x;
               birdOriginalY = slingshot.getWingmanJumpOffCoordinates().y;
            }
            if(bird)
            {
               bird.fallFromSlingshot();
               this.mChristmasBirdJumpTween = bird.jumpTweenToPosition(birdOriginalX,birdOriginalY);
            }
         }
         slingshot.setSlingShotState(LevelSlingshot.STATE_BIRD_IS_READY);
         var addedObject:LevelSlingshotObject = slingshot.addBirdStraightIntoSlingshot("POWERUP_BOOMBOX",slingshot.x + 0.7,slingshot.y + 0.1,0);
         addedObject.giveScoreWhenRemainOnLevelEnd = false;
         this.mController.resetToSlingShotState();
         if(useSuperseed)
         {
            this.mWaitingForBirdGrowing = true;
            this.doGrow();
         }
         slingshot.addBoomboxAnimation(slingshot.x + 0.7,slingshot.y + 0.1);
         SoundEngine.playSound("tnt_released_01","ChannelPowerups",0,0.5);
      }
      
      private function getLevelObjectManager() : FacebookLevelObjectManager
      {
         return this.mController.levelMain.levelObjects as FacebookLevelObjectManager;
      }
      
      public function usePowerup(powerupId:String) : Boolean
      {
         switch(powerupId)
         {
            case PowerupType.sBirdFood.identifier:
               this.mWaitingForBirdGrowing = true;
               this.doZoomThenPowerup(this.doGrow,false);
               break;
            case PowerupType.sExtraSpeed.identifier:
               this.doZoomThenPowerup(this.doSpeed,false);
               break;
            case PowerupType.sBoombox.identifier:
               this.doZoomThenPowerup(this.doBoombox,false);
               break;
            case PowerupType.sLaserSight.identifier:
               this.doZoomThenPowerup(this.doLaserSight,false);
               break;
            case PowerupType.sEarthquake.identifier:
               this.doZoomThenPowerup(this.doEarthquake,true);
               break;
            case PowerupType.sTntDrop.identifier:
               this.doZoomThenPowerup(this.doBomb,true);
               break;
            case PowerupType.sPumpkinDrop.identifier:
               this.doZoomThenPowerup(this.doPumpkinDrop,true);
               break;
            case PowerupType.sExtraBird.identifier:
               AngryBirdsEngine.smLevelMain.slingshot.setSlingShotState(FacebookLevelSlingshot.STATE_WAITING_FOR_WINGMAN);
               this.doZoomThenPowerup(this.doWingman,false);
               break;
            case PowerupType.sMushroom.identifier:
               this.doZoomThenPowerup(this.doMushRoom,true);
         }
         this.addPowerupToUsed(powerupId);
         this.requestPowerup(powerupId);
         this.mController.levelMain.usePowerup(powerupId);
         ItemsInventory.instance.usePowerup(powerupId);
         var currentLevel:String = this.mLevelManager.currentLevel;
         var currentChapter:String = this.mLevelManager.getCurrentEpisodeModel().name;
         FacebookGoogleAnalyticsTracker.trackPowerupUsedEvent(powerupId,currentLevel);
         var totalBirds:int = AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount();
         var remainingBirds:int = AngryBirdsEngine.smLevelMain.slingshot.getBirdCount();
         var birdName:String = "";
         if(AngryBirdsEngine.smLevelMain.slingshot.mBirds.length > 0 && AngryBirdsEngine.smLevelMain.slingshot.mBirds[0] as LevelSlingshotObject)
         {
            birdName = (AngryBirdsEngine.smLevelMain.slingshot.mBirds[0] as LevelSlingshotObject).name;
         }
         return true;
      }
      
      private function doMushRoom() : void
      {
         this.mController.increaseEndLevelTimer(3 * Math.round(LevelEngineBox2D.UPDATE_TIME_STEP_MILLISECONDS * TunerFriends.EARTHQUAKE_TOTAL_STEPS));
         (AngryBirdsEngine.smLevelMain.levelObjects as FacebookLevelObjectManager).spawnMushrooms();
         this.mMushroomGrowTimer = (AngryBirdsEngine.smLevelMain.levelObjects as FacebookLevelObjectManager).mushroomGrowthTime;
      }
      
      public function requestPowerup(name:String) : void
      {
         if(ItemsInventory.instance.getSubscriptionExpirationForPowerup(name) > 0)
         {
            return;
         }
         var usedItems:Array = (AngryBirdsEngine.smLevelMain as FacebookLevelMain).getUsedItems();
         var urlLoader:ABFLoader = new ABFLoader();
         urlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var powerupRequest:PowerupRequest = new PowerupRequest(name,usedItems,urlLoader);
         if(this.mCurrentPowerupRequest != null)
         {
            this.mPowerupRequestQueue.push(powerupRequest);
         }
         else
         {
            this.performPowerupRequest(powerupRequest);
         }
      }
      
      protected function performPowerupRequest(powerupRequest:PowerupRequest) : void
      {
         var levelId:String = this.mLevelManager.currentLevel;
         var actualLevelNumber:String = (this.mLevelManager as FacebookLevelManager).getFacebookNameFromLevelId(levelId);
         var tournamentLevelIndex:int = TournamentModel.instance.levelIDs.indexOf(levelId);
         if(tournamentLevelIndex > -1)
         {
            actualLevelNumber = String(TournamentModel.instance.getLevelActualNumber(levelId));
         }
         var episode:EpisodeModel = this.mLevelManager.getEpisodeForLevel(levelId);
         var episodeName:String = !!episode ? episode.name : "unknownEpisode";
         var request:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/useItem");
         var postData:Object = {
            "item":powerupRequest.powerupName,
            "levelId":this.mLevelManager.currentLevel,
            "episode":episodeName,
            "actualLevel":actualLevelNumber,
            "usedItems":powerupRequest.powerupCount
         };
         request.contentType = "application/json";
         request.method = URLRequestMethod.POST;
         request.data = JSON.stringify(postData);
         this.mCurrentPowerupRequest = powerupRequest;
         this.addURLLoaderListeners(powerupRequest.urlLoader);
         powerupRequest.urlLoader.load(request);
      }
      
      protected function addURLLoaderListeners(urlLoader:URLLoader) : void
      {
         this.removeURLLoaderListeners(urlLoader);
         urlLoader.addEventListener(Event.COMPLETE,this.onPowerupRequestedComplete);
         urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onPowerupRequestedError);
         urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onPowerupRequestedError);
         urlLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onPowerupRequestedError);
      }
      
      protected function removeURLLoaderListeners(urlLoader:URLLoader) : void
      {
         urlLoader.removeEventListener(Event.COMPLETE,this.onPowerupRequestedComplete);
         urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onPowerupRequestedError);
         urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onPowerupRequestedError);
         urlLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onPowerupRequestedError);
      }
      
      protected function onPowerupRequestedComplete(e:Event) : void
      {
         var response:Object = null;
         var request:PowerupRequest = this.mCurrentPowerupRequest;
         this.removeURLLoaderListeners(request.urlLoader);
         this.mCurrentPowerupRequest = null;
         response = request.urlLoader.data;
         if(response.items)
         {
            ItemsInventory.instance.injectInventoryUpdate(response.items);
         }
         if(response.error)
         {
            throw new Error("Powerup activation unsuccessful. Server returned \'" + response.error + "\'");
         }
         this.powerupResponse(true);
      }
      
      protected function onPowerupRequestedError(event:Event) : void
      {
         var request:PowerupRequest = this.mCurrentPowerupRequest;
         this.removeURLLoaderListeners(request.urlLoader);
         this.mCurrentPowerupRequest = null;
         if(event.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED));
         }
         else
         {
            this.powerupResponse(false);
         }
      }
      
      protected function powerupResponse(allowed:Boolean) : void
      {
         var powerupRequest:PowerupRequest = null;
         if(!allowed)
         {
            this.showWarningPopup();
         }
         if(this.mPowerupRequestQueue.length > 0)
         {
            powerupRequest = this.mPowerupRequestQueue.shift();
            this.performPowerupRequest(powerupRequest);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function showWarningPopup() : void
      {
         var popup:WarningPopup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      public function isLoading(checkAlsoPowerupActivation:Boolean = true) : Boolean
      {
         if(checkAlsoPowerupActivation)
         {
            return this.mCurrentPowerupRequest != null || this.mPowerupRequestQueue.length > 0 || this.isWaitingForPowerupActivation;
         }
         return this.mCurrentPowerupRequest != null || this.mPowerupRequestQueue.length > 0;
      }
      
      public function get isWaitingForPowerupActivation() : Boolean
      {
         return this.mWaitingForBirdGrowing || (AngryBirdsEngine.smLevelMain.slingshot as FacebookLevelSlingshot).mSlingShotState == FacebookLevelSlingshot.STATE_WAITING_FOR_WINGMAN;
      }
      
      public function dispose() : void
      {
         if(this.mController)
         {
            this.mController.mouseEnabled = true;
         }
         this.mMushroomGrowTimer = 0;
         this.mEarthquakeCurrentStep = -1;
         this.mBombTimeToExplode = -1;
         this.mCurrentPendingPowerupTimeLeft = -1;
         this.mBombPowerup = null;
         this.mPostZoomPowerupFunction = null;
         this.mPendingPowerups = [];
         if(this.mFuseSoundEffect)
         {
            this.mFuseSoundEffect.stop();
            this.mFuseSoundEffect = null;
         }
         if(this.mAimingLine)
         {
            this.mAimingLine.dispose();
            this.mAimingLine = null;
         }
      }
      
      public function cleanUpJumpTween() : void
      {
         if(this.mChristmasBirdJumpTween)
         {
            this.mChristmasBirdJumpTween.gotoEndAndStop();
            this.mChristmasBirdJumpTween = null;
         }
         if(this.mWingmanBirdJumpTween)
         {
            this.mWingmanBirdJumpTween.gotoEndAndStop();
            this.mWingmanBirdJumpTween = null;
         }
      }
      
      public function powerupUsedInCurrentLevel(powerupId:String) : Boolean
      {
         return this.mUsedPowerups && this.mUsedPowerups.indexOf(powerupId) > -1;
      }
      
      public function clearUsedPowerups() : void
      {
         this.mUsedPowerups = null;
      }
      
      private function addPowerupToUsed(id:String) : void
      {
         if(!this.mUsedPowerups)
         {
            this.mUsedPowerups = new Array();
         }
         this.mUsedPowerups[this.mUsedPowerups.length] = id;
      }
      
      public function get wingmanUsed() : Boolean
      {
         return this.mWingmanUsed;
      }
      
      public function set wingmanUsed(value:Boolean) : void
      {
         this.mWingmanUsed = value;
      }
      
      public function setAimingLineTexture() : void
      {
         var dotTexture:PivotTexture = null;
         if(this.mAimingLine)
         {
            this.mAimingLine.dispose();
         }
         var dotTextureName:String = "LASER_DOT";
         if(this.mIsShowingAimingLine)
         {
            dotTextureName = "LASER_DOT";
         }
         else if(SlingShotUIManager.getSelectedSlingShotId() == SlingShotType.SLING_SHOT_CHRISTMAS.identifier)
         {
            dotTextureName = "POWERUP_TREESLING_AIMDOT";
         }
         if(this.mController)
         {
            dotTexture = this.mController.levelMain.textureManager.getTexture(dotTextureName);
            this.mAimingLine = new AimingLineFriends(this.mController,new Sprite(),dotTexture.texture,0,0);
            AngryBirdsEngine.smLevelMain.objects.backgroundSprite.addChild(this.mAimingLine.sprite);
         }
      }
      
      public function get isSlingscopeActivated() : Boolean
      {
         return this.mIsShowingAimingLine;
      }
   }
}
