package com.angrybirds.engine
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.item.LevelItemManagerSpace;
   import com.angrybirds.data.level.theme.LevelThemeBackground;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundManager;
   import com.angrybirds.engine.background.LevelBackground;
   import com.angrybirds.engine.background.LevelBackgroundRockInRio;
   import com.angrybirds.engine.background.LevelBackgroundThunder;
   import com.angrybirds.engine.camera.FacebookLevelCamera;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.engine.controllers.FacebookGameLogicController;
   import com.angrybirds.engine.controllers.ILevelMainController;
   import com.angrybirds.engine.objects.FacebookLevelObjectManager;
   import com.angrybirds.engine.objects.GravityFilterCategory;
   import com.angrybirds.engine.objects.LevelObjectBird;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import com.angrybirds.engine.particles.FacebookLevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.powerups.PowerupsHandler;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.slingshots.SlingShotType;
   import com.angrybirds.states.tournament.StateTournamentLevelLoad;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.tournamentEvents.scoreMultiplier.ScoreMultiplierManager;
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.DynamicContentManager;
   import com.rovio.graphics.FacebookAnimationManager;
   import com.rovio.graphics.FileNameMappedDynamicContentManager;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.graphics.TextureManager;
   import com.rovio.spritesheet.SpriteSheetBase;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.HashMap;
   import flash.display.Stage;
   import flash.events.Event;
   import starling.core.Starling;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import starling.filters.CacheAsTextureFilter;
   import starling.filters.ColorToBlackFilter;
   import starling.filters.FragmentFilter;
   
   public class FacebookLevelMain extends LevelMainSpace
   {
      
      public static var damageScoreExplosionMultiplier:Number = 1;
      
      private static var mUnavailableBrandedThemes:HashMap = new HashMap();
       
      
      private var mPowerupsHandler:PowerupsHandler;
      
      private var mPowerupsUsed:Array;
      
      private var mSlingshotsUsed:Array;
      
      private var mIsLoadingRevertedThemeGraphics:Boolean;
      
      private var mDarknessFilter:ColorToBlackFilter;
      
      private var mMaskFilter:CacheAsTextureFilter;
      
      private var mActiveSpriteFilter:FragmentFilter;
      
      protected var mScoreMultiplierManager:ScoreMultiplierManager;
      
      public function FacebookLevelMain(stage:Stage, levelItemManager:LevelItemManager, levelThemeManager:LevelThemeBackgroundManager, levelManager:LevelManager)
      {
         super(stage,levelItemManager,levelThemeManager,levelManager);
         this.mDarknessFilter = new ColorToBlackFilter(1024,768);
         this.mDarknessFilter.setThresholdColor(0.999,0.999,0.999,0);
         this.mDarknessFilter.directRender = true;
         this.mMaskFilter = new CacheAsTextureFilter();
         this.mMaskFilter.resolution = 0.5;
      }
      
      public static function addStarsParticles(centerXB2:Number, centerYB2:Number, baseCount:int, optionalCount:int, baseSpeed:int) : void
      {
         var angle:Number = NaN;
         var starSpeed:Number = NaN;
         var starsCount:int = baseCount + Math.random() * optionalCount;
         for(var i:int = 0; i < starsCount; i++)
         {
            angle = Math.random() * (Math.PI * 2);
            starSpeed = 0.5 * baseSpeed + baseSpeed * (Math.random() * 0.5);
            AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("STAR_PARTICLE",LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,centerXB2,centerYB2,750,"",LevelParticle.getParticleMaterialFromEngineMaterial("BIRD_RED"),starSpeed * Math.cos(angle) * 1,-starSpeed * Math.sin(angle) * 1,5,starSpeed * 20,Math.sqrt(1));
         }
      }
      
      public static function addBubbleParticles(centerXB2:Number, centerYB2:Number, baseCount:int, optionalCount:int, baseSpeed:int) : void
      {
         var scale:Number = NaN;
         var angle:Number = NaN;
         var speed:Number = NaN;
         var count:int = baseCount + Math.random() * optionalCount;
         for(var i:int = 0; i < count; i++)
         {
            scale = 0.2 + Math.random() * 0.2;
            angle = Math.random() * (Math.PI * 2);
            speed = 0.5 * baseSpeed + baseSpeed * (Math.random() * 0.5);
            AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,centerXB2,centerYB2,500,"",LevelParticle.getParticleMaterialFromEngineMaterial("BIRD_RED"),speed * Math.cos(angle) * scale,-speed * Math.sin(angle) * scale,0,0,scale);
         }
      }
      
      public function getUsedPowerups() : Array
      {
         if(this.mPowerupsUsed)
         {
            return this.mPowerupsUsed.concat();
         }
         return null;
      }
      
      public function getUsedItems() : Array
      {
         var item:String = null;
         var usedItems:Array = [];
         for each(item in this.mPowerupsUsed)
         {
            if(ItemsInventory.instance.getSubscriptionExpirationForPowerup(item) <= 0)
            {
               usedItems.push(item);
            }
         }
         for each(item in this.mSlingshotsUsed)
         {
            usedItems.push(item);
         }
         return usedItems;
      }
      
      public function useSeasonalSlingshot(slingshot:FacebookLevelSlingshot) : void
      {
         slingshot.isSeasonal = false;
      }
      
      public function getUsedPowerupCount() : int
      {
         var i:int = 0;
         var powerupsUsed:int = 0;
         if(this.mPowerupsUsed)
         {
            powerupsUsed = this.mPowerupsUsed.length;
            for(i = 0; i < this.mPowerupsUsed.length; i++)
            {
               if(PowerupType.sExemptedFromLevelPowerupLimit.indexOf(this.mPowerupsUsed[i]) > -1)
               {
                  powerupsUsed--;
               }
            }
         }
         return powerupsUsed;
      }
      
      public function initializeSlingshotObject(bird:LevelSlingshotObject) : void
      {
         var textureName:String = null;
         var lightTexture:PivotTexture = null;
         if(this.levelUsesDarkness)
         {
            textureName = "LIGHT_BIRD";
            lightTexture = TextureManager.instance.getTexture(textureName);
            if(lightTexture)
            {
               bird.createBackgroundSprite();
               bird.backgroundSprite.addChild(lightTexture.getAsImage());
               objects.backgroundSprite.addChild(bird.backgroundSprite);
            }
         }
      }
      
      protected function get levelUsesDarkness() : Boolean
      {
         return false;
      }
      
      override protected function addBackgroundSpritesToDisplayList() : void
      {
         super.addBackgroundSpritesToDisplayList();
         if(this.levelUsesDarkness)
         {
            mLevelObjects.backgroundSprite.filter = this.mMaskFilter;
            mLevelObjects.backgroundSprite.ownsFilter = false;
         }
      }
      
      override protected function addGameSpritesToDisplayList() : void
      {
         this.mActiveSpriteFilter = null;
         if(this.levelUsesDarkness)
         {
            this.mActiveSpriteFilter = this.mDarknessFilter;
         }
         if(mLevelObjects is FacebookLevelObjectManager)
         {
            this.addItemToDisplayList((mLevelObjects as FacebookLevelObjectManager).mBackSprite);
         }
         super.addGameSpritesToDisplayList();
         this.mActiveSpriteFilter = null;
      }
      
      override protected function addItemToDisplayList(item:DisplayObject) : void
      {
         super.addItemToDisplayList(item);
         item.filter = this.mActiveSpriteFilter;
         item.ownsFilter = false;
      }
      
      public function isPowerupUsed(powerup:String) : Boolean
      {
         if(!this.mPowerupsUsed)
         {
            return false;
         }
         return this.mPowerupsUsed.indexOf(powerup) >= 0;
      }
      
      public function usePowerup(powerup:String) : void
      {
         if(!this.mPowerupsUsed)
         {
            this.mPowerupsUsed = [];
         }
         if(powerup == PowerupType.sEarthquake.identifier)
         {
            if(this.mScoreMultiplierManager)
            {
               this.mScoreMultiplierManager.activateScoreMultiplier(false);
            }
         }
         this.mPowerupsUsed.push(powerup);
      }
      
      public function useSlingShot(slingShot:String) : void
      {
         if(!this.mSlingshotsUsed)
         {
            this.mSlingshotsUsed = [];
         }
         if(this.mSlingshotsUsed.indexOf(slingShot) == -1)
         {
            this.mSlingshotsUsed.push(slingShot);
         }
      }
      
      override public function init(level:LevelModel) : void
      {
         super.init(level);
         this.mPowerupsUsed = [];
         this.mPowerupsHandler = this.initializePowerUpsHandler();
         this.mSlingshotsUsed = [];
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            this.mScoreMultiplierManager = TournamentEventManager.instance.getActivatedEventManager() as ScoreMultiplierManager;
         }
         else
         {
            this.mScoreMultiplierManager = null;
         }
      }
      
      protected function initializePowerUpsHandler() : PowerupsHandler
      {
         return new PowerupsHandler(mLevelManager);
      }
      
      override public function setController(controller:ILevelMainController) : void
      {
         super.setController(controller);
         if(controller is FacebookGameLogicController)
         {
            this.mPowerupsHandler.setController(controller as FacebookGameLogicController);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.mPowerupsHandler)
         {
            this.mPowerupsHandler.dispose();
            this.mPowerupsHandler = null;
         }
      }
      
      override protected function stabilizeWorld() : void
      {
         stabilizeWorldWithSteps(20,1 / 30);
      }
      
      protected function updateDarkness(deltaTimeMilliSeconds:Number) : void
      {
         if(this.mDarknessFilter)
         {
            this.mDarknessFilter.antiAliasing = deltaTimeMilliSeconds < 20;
            this.mDarknessFilter.setBaseColor(0.02,0.08 + 0.05 * Math.sin(mLevelTimeMilliSeconds / 250),0.02,0);
            if(mLevelObjects.backgroundSprite.numChildren > 0)
            {
               this.mDarknessFilter.maskFilter = this.mMaskFilter;
            }
            else
            {
               this.mDarknessFilter.maskFilter = null;
            }
         }
      }
      
      override protected function updateWithTime(deltaTimeMilliSeconds:Number, updateGraphics:Boolean, updateSlingshot:Boolean) : Number
      {
         this.mPowerupsHandler.run(deltaTimeMilliSeconds,mLevelObjects);
         if(this.levelUsesDarkness)
         {
            this.updateDarkness(deltaTimeMilliSeconds);
         }
         return super.updateWithTime(deltaTimeMilliSeconds,updateGraphics,updateSlingshot);
      }
      
      override public function handleEngineUpdateStep(timeStep:Number) : void
      {
         super.handleEngineUpdateStep(timeStep);
         this.mPowerupsHandler.update(timeStep);
      }
      
      override protected function initThemeGraphicsManager() : DynamicContentManager
      {
         var assetsRoot:String = AngryBirdsFacebook.sSingleton.getAssetsRoot();
         return new FileNameMappedDynamicContentManager(assetsRoot,"",mLevelManager,LevelItemManagerSpace(mLevelItemManager));
      }
      
      override protected function initThemeSoundsManager() : DynamicContentManager
      {
         var assetsRoot:String = AngryBirdsFacebook.sSingleton.getAssetsRoot();
         return new FileNameMappedDynamicContentManager(assetsRoot,"",mLevelManager,LevelItemManagerSpace(mLevelItemManager),false);
      }
      
      override protected function initCutSceneManager() : DynamicContentManager
      {
         var assetsRoot:String = AngryBirdsFacebook.sSingleton.getAssetsRoot();
         return new FileNameMappedDynamicContentManager(assetsRoot,"",mLevelManager,LevelItemManagerSpace(mLevelItemManager));
      }
      
      override public function get backgroundTextureManager() : TextureManager
      {
         if(themeGraphicsManager)
         {
            return themeGraphicsManager.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(textureManager:TextureManager) : AnimationManager
      {
         return new FacebookAnimationManager(textureManager);
      }
      
      override protected function initializeLevelBackground(name:String, groundLevel:Number, textureManager:TextureManager, minimumScale:Number) : LevelBackground
      {
         var background:LevelThemeBackground = mLevelThemeManager.getBackground(name);
         if(background && name == "BACKGROUND_FB_MOUNTAINS" && !Starling.isSoftware)
         {
            return new LevelBackgroundThunder(this,background,groundLevel,textureManager,minimumScale);
         }
         if(background && name == "BACKGROUND_FB_ROCK_IN_RIO")
         {
            return new LevelBackgroundRockInRio(this,background,groundLevel,textureManager,minimumScale);
         }
         return super.initializeLevelBackground(name,groundLevel,textureManager,minimumScale);
      }
      
      override protected function initializeLevelSlingshot(level:LevelModel) : LevelSlingshot
      {
         var slingshot:FacebookLevelSlingshot = new FacebookLevelSlingshot(this,level,new Sprite());
         this.useSeasonalSlingshot(slingshot);
         return slingshot;
      }
      
      override protected function initializeLevelObjectManager(level:LevelModel) : LevelObjectManager
      {
         var groundType:String = LevelThemeBackground.GROUND_TYPE;
         return new FacebookLevelObjectManager(this,mLevelManager,level,new Sprite(),groundType);
      }
      
      override protected function initializeParticleManager(animationManager:AnimationManager, textureManager:TextureManager) : LevelParticleManager
      {
         return new FacebookLevelParticleManager(animationManager,textureManager);
      }
      
      public function get powerupsHandler() : PowerupsHandler
      {
         return this.mPowerupsHandler;
      }
      
      override protected function initializeLevelCamera(level:LevelModel) : LevelCamera
      {
         return new FacebookLevelCamera(this,level);
      }
      
      override protected function getSpriteSheetGroup(spriteSheet:SpriteSheetBase) : int
      {
         var name:String = spriteSheet.name.toLowerCase();
         if(name.indexOf("bird") >= 0 || name.indexOf("pig") >= 0 || name.indexOf("blocks") >= 0)
         {
            return 0;
         }
         if(name.indexOf("tutorial") >= 0)
         {
            return 2;
         }
         return 1;
      }
      
      override protected function loadTheme(themeName:String) : void
      {
         if(mUnavailableBrandedThemes[themeName])
         {
            themeName = mCurrentLevel.theme = StateTournamentLevelLoad.TOURNAMENT_THEME;
         }
         this.mIsLoadingRevertedThemeGraphics = false;
         super.loadTheme(themeName);
      }
      
      override protected function onThemeGraphicsNotAvailable(e:Event) : void
      {
         if(!this.mIsLoadingRevertedThemeGraphics && TournamentModel.instance.tournamentRules && TournamentModel.instance.tournamentRules.background == mCurrentLevel.theme && mCurrentLevel.theme != StateTournamentLevelLoad.TOURNAMENT_THEME)
         {
            mUnavailableBrandedThemes[mCurrentLevel.theme] = mCurrentLevel.theme;
            this.mIsLoadingRevertedThemeGraphics = true;
            mCurrentLevel.theme = StateTournamentLevelLoad.TOURNAMENT_THEME;
            loadThemeGraphics(StateTournamentLevelLoad.TOURNAMENT_THEME);
         }
         else
         {
            super.onThemeGraphicsNotAvailable(e);
         }
      }
      
      override protected function updateAimingLine() : void
      {
      }
      
      override protected function initializeAimingLine() : void
      {
      }
      
      public function setCurrentTheme(newThemeName:String) : void
      {
         sCurrentTheme = newThemeName;
      }
      
      override public function shootBird(bird:LevelSlingshotObject, power:Number, angle:Number) : LevelObjectBird
      {
         var powerupsUsed:Array = null;
         var slingshotPhysicsPowerups:Object = null;
         var i:int = 0;
         var slingShotName:String = SlingShotType.SLING_SHOT_NORMAL.identifier;
         var slingshotDefinition:SlingShotDefinition = (bird as FacebookLevelSlingshotObject).SlingShotAbility;
         if(slingshotDefinition)
         {
            slingShotName = slingshotDefinition.identifier;
            if(slingshotDefinition.getBirdGravityFilter() == GravityFilterCategory.BIRD_UNAFFECTED_BY_GRAVITY)
            {
               angle--;
            }
         }
         var birdObject:LevelObjectBird = super.shootBird(bird,power,angle);
         birdObject.addBirdDataObject("slingShotAbility",(bird as FacebookLevelSlingshotObject).SlingShotAbility);
         if((bird as FacebookLevelSlingshotObject).powerUpSuperSeedUsed)
         {
            birdObject.destructionBlockName = LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_POWERUP;
         }
         else
         {
            birdObject.destructionBlockName = LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_CORE;
         }
         if(slingshotDefinition)
         {
            slingshotPhysicsPowerups = slingshotDefinition.getBirdMaterials(bird.name);
            if(slingshotPhysicsPowerups[SlingShotDefinition.MATERIAL_NAME_RESTITUTION])
            {
               birdObject.setRestitution(slingshotPhysicsPowerups[SlingShotDefinition.MATERIAL_NAME_RESTITUTION]);
            }
            if(slingshotPhysicsPowerups[SlingShotDefinition.MATERIAL_NAME_DENSITY])
            {
               birdObject.setDensity(slingshotPhysicsPowerups[SlingShotDefinition.MATERIAL_NAME_DENSITY]);
            }
            if(slingshotPhysicsPowerups[SlingShotDefinition.MATERIAL_NAME_FRICTION])
            {
               birdObject.setFriction(slingshotPhysicsPowerups[SlingShotDefinition.MATERIAL_NAME_FRICTION]);
            }
            birdObject.gravityFilter = slingshotDefinition.getBirdGravityFilter();
            birdObject.setCollisionEffect(slingshotDefinition.getBirdCollisionEffect());
         }
         var levelName:String = "Level" + AngryBirdsEngine.smLevelMain.currentLevel.name;
         var birdIndex:int = 1 + AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount() - AngryBirdsEngine.smLevelMain.slingshot.getBirdCount();
         powerupsUsed = (AngryBirdsEngine.smLevelMain as FacebookLevelMain).getUsedPowerups();
         var kingslingActivate:* = powerupsUsed.indexOf(PowerupType.sExtraSpeed.identifier) > -1;
         var slingscopeActive:* = powerupsUsed.indexOf(PowerupType.sLaserSight.identifier) > -1;
         var superseedActive:* = powerupsUsed.indexOf(PowerupType.sBirdFood.identifier) > -1;
         var wingmanActive:* = birdObject.itemName == "BIRD_WINGMAN";
         FacebookGoogleAnalyticsTracker.trackShot(slingShotName,levelName,birdIndex,kingslingActivate,slingscopeActive,superseedActive,wingmanActive);
         FacebookAnalyticsCollector.getInstance().trackSlingshotUsed(currentLevel.name,slingShotName,kingslingActivate,slingscopeActive,superseedActive,wingmanActive);
         var trailParticleCount:int = 0;
         if(kingslingActivate)
         {
            birdObject.addTrailParticleName("STAR_PARTICLE");
            trailParticleCount = LevelObjectBird.TRAIL_PARTICLE_DEFAULT_COUNT;
         }
         if((bird as FacebookLevelSlingshotObject).powerUpSuperSeedUsed)
         {
            birdObject.addTrailParticleName("POWERUP_POWERPOTION_TRAIL");
            trailParticleCount = LevelObjectBird.TRAIL_PARTICLE_DEFAULT_COUNT;
         }
         if(slingshotDefinition)
         {
            for(i = 1; i <= slingshotDefinition.particleCount; i++)
            {
               birdObject.addTrailParticleName(slingshotDefinition.particleName + i);
            }
            trailParticleCount = slingshotDefinition.trailParticleCount > trailParticleCount ? int(slingshotDefinition.trailParticleCount) : int(trailParticleCount);
            birdObject.setTrailParticleCount(trailParticleCount);
         }
         if(this.mScoreMultiplierManager)
         {
            this.mScoreMultiplierManager.activateScoreMultiplier(birdObject.itemName == this.mScoreMultiplierManager.getScoreMultiplierBird());
         }
         return birdObject;
      }
      
      public function isAnyPowerUpStillActive() : Boolean
      {
         var worldAtSleep:Boolean = false;
         var active:Boolean = false;
         if(this.mPowerupsHandler)
         {
            worldAtSleep = objects.isWorldAtSleep();
            if(this.mPowerupsHandler.isEarthquakeActive())
            {
               active = true;
            }
            else if(this.mPowerupsHandler.isMushroomActive())
            {
               active = true;
            }
         }
         return active;
      }
      
      override public function addScore(newScore:int, scoreType:String, showScore:Boolean = false, newX:Number = 0, newY:Number = 0, newMaterial:int = -9999, floatingScoreFont:String = null) : void
      {
         if(this.mScoreMultiplierManager && this.mScoreMultiplierManager.scoreMultiplierActivated)
         {
            newScore = Math.floor(newScore * this.mScoreMultiplierManager.getScoreMultiplierValue());
            this.mScoreMultiplierManager.setIconBlinking(true);
         }
         super.addScore(newScore,scoreType,showScore,newX,newY,newMaterial,floatingScoreFont);
      }
   }
}
