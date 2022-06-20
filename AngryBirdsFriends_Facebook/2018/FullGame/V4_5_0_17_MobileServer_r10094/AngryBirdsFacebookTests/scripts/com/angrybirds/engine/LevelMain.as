package com.angrybirds.engine
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelCameraModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.item.behaviors.SpecialBehaviorManager;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.data.level.theme.LevelThemeBackground;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundManager;
   import com.angrybirds.engine.background.LevelBackground;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.engine.controllers.ILevelMainController;
   import com.angrybirds.engine.data.Replay;
   import com.angrybirds.engine.leveleventmanager.LevelEventPublisher;
   import com.angrybirds.engine.levels.ILevelLogic;
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.angrybirds.engine.objects.LevelObjectBird;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import com.angrybirds.engine.objects.LevelObjectPig;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.events.FrameUpdateEvent;
   import com.rovio.factory.Log;
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.DynamicContentManager;
   import com.rovio.graphics.TextureManager;
   import com.rovio.sound.SoundEffect;
   import com.rovio.spritesheet.ISpriteSheetContainer;
   import com.rovio.spritesheet.SpriteSheetBase;
   import com.rovio.utils.HashMap;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import starling.core.Starling;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class LevelMain extends LevelEventPublisher
   {
      
      private static const MAX_PARTICLE_COUNT:int = 20;
      
      public static const PIXEL_TO_B2_SCALE:Number = 1 / 20;
      
      protected static var sPreviousLevel:String;
      
      protected static var sPreviousScale:Number = 1;
      
      protected static var sCurrentTheme:String = LevelModel.DEFAULT_THEME;
       
      
      protected var mLevelObjects:LevelObjectManager;
      
      private var mTrailingObjects:Array = null;
      
      protected var mLevelBackground:LevelBackground;
      
      public var mLevelEngine:LevelEngineBox2D;
      
      protected var mLevelBorders:LevelBorders;
      
      protected var mLevelCamera:LevelCamera;
      
      protected var mLevelSlingshot:LevelSlingshot;
      
      protected var mLevelParticles:LevelParticleManager;
      
      public var mReadyToRun:Boolean = false;
      
      public var mCanNotRun:Boolean = false;
      
      protected var mGraphicsAvailable:Boolean = false;
      
      protected var mSoundsAvailable:Boolean = false;
      
      public var mShadingCounter:Number = 1500;
      
      protected var LEVEL_INITIAL_SCORE_SAFETY_TIME:int = 500;
      
      protected var mLevelInitialScoreSafetyTimer:int;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      private var mObjectBlinkAnimationTimer:Number;
      
      private var mObjectScreamAnimationTimer:Number;
      
      private var mSlippingSoundTimer:Number;
      
      public var mPhysicsTimeOffsetMilliSeconds:Number;
      
      public var mLevelTimeMilliSeconds:Number;
      
      private var mRootSprite:LevelSprite;
      
      private var mGameSprite:Sprite;
      
      protected var mCurrentLevel:LevelModel;
      
      protected var mController:ILevelMainController = null;
      
      private var mEventDispatcher:EventDispatcher;
      
      private var mGraphicsInitListeners:Array;
      
      private var mStarling:Starling;
      
      private var mSpriteSheetContainers:Vector.<ISpriteSheetContainer>;
      
      protected var mTextureManager:TextureManager;
      
      protected var mAnimationManager:AnimationManager;
      
      private var mThemeGraphicsManager:DynamicContentManager;
      
      private var mThemeSoundsManager:DynamicContentManager;
      
      private var mCutSceneManager:DynamicContentManager;
      
      private var mStage:Stage;
      
      private var mCameraShaker:LevelCameraShaker;
      
      protected var mCurrentReplay:Replay;
      
      protected var mPreviousReplay:Replay;
      
      protected var mReplayUpdateTimeMilliSeconds:Number = 0.0;
      
      protected var mReplayData:String;
      
      private var mActivateSpecialPower:Boolean;
      
      private var mSpecialPowerTargetX:Number;
      
      private var mSpecialPowerTargetY:Number;
      
      protected var mSlowMotionModifier:GameSpeedModifier;
      
      protected var mLevelItemManager:LevelItemManager;
      
      protected var mLevelThemeManager:LevelThemeBackgroundManager;
      
      protected var mLevelManager:LevelManager;
      
      protected var mXORvalue:uint = 1.417339207E9;
      
      public var mMEInUse:Boolean;
      
      private var mPhysicsEnabled:Boolean = true;
      
      protected var mScreenWidth:int = 0;
      
      protected var mScreenHeight:int = 0;
      
      protected var mScreenWidthScale:Number = 1.0;
      
      protected var mScreenHeightScale:Number = 1.0;
      
      protected var mAnimationsWaitingInitialization:Boolean;
      
      private var mLevelLogicClasses:HashMap;
      
      protected var mIsStarlingRunning:Boolean = false;
      
      private var mBehaviorManager:SpecialBehaviorManager;
      
      public function LevelMain(stage:Stage, levelItemManager:LevelItemManager, levelThemeManager:LevelThemeBackgroundManager, levelManager:LevelManager)
      {
         this.mGraphicsInitListeners = [];
         this.mSpriteSheetContainers = new Vector.<ISpriteSheetContainer>();
         super();
         this.mEventDispatcher = new EventDispatcher();
         this.mStage = stage;
         this.mLevelItemManager = levelItemManager;
         this.mLevelThemeManager = levelThemeManager;
         this.mLevelManager = levelManager;
         this.mTextureManager = TextureManager.instance;
         this.mAnimationManager = this.initAnimationManager(this.mTextureManager);
         this.mThemeGraphicsManager = this.initThemeGraphicsManager();
         this.mThemeSoundsManager = this.initThemeSoundsManager();
         this.mCutSceneManager = this.initCutSceneManager();
         this.mLevelLogicClasses = new HashMap();
         var stage3D:Stage3D = stage.stage3Ds[0];
         this.mStarling = new Starling(LevelSprite,stage,new Rectangle(0,0,AngryBirdsEngine.SCREEN_WIDTH,AngryBirdsEngine.SCREEN_HEIGHT),stage3D);
         stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated,false,0,true);
         this.mStarling.simulateMultitouch = false;
         this.mStarling.enableErrorChecking = false;
         this.mStarling.antiAliasing = 2;
         this.mStarling.createContext();
         this.mBehaviorManager = new SpecialBehaviorManager(this);
      }
      
      public static function get LEVEL_WIDTH_PIXEL() : Number
      {
         return AngryBirdsEngine.SCREEN_WIDTH;
      }
      
      public static function get LEVEL_HEIGHT_PIXEL() : Number
      {
         return AngryBirdsEngine.SCREEN_HEIGHT;
      }
      
      public static function get LEVEL_HEIGHT_B2() : Number
      {
         return AngryBirdsEngine.SCREEN_HEIGHT * PIXEL_TO_B2_SCALE;
      }
      
      public static function get LEVEL_WIDTH_B2() : Number
      {
         return LEVEL_WIDTH_PIXEL * PIXEL_TO_B2_SCALE;
      }
      
      public static function getDistanceOfObjects(obj1:LevelObjectBase, obj2:LevelObjectBase) : Number
      {
         var newX:Number = obj1.worldX - obj2.worldX;
         var newY:Number = obj1.worldY - obj2.worldY;
         return getDistance(newX,newY);
      }
      
      public static function getDistance(newX:Number, newY:Number) : Number
      {
         return Math.sqrt(newX * newX + newY * newY);
      }
      
      public function get isStarlingRunning() : Boolean
      {
         return this.mIsStarlingRunning;
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.mGameSprite && this.rootSprite)
         {
            this.mGameSprite = this.mRootSprite.gameSprite;
         }
         return this.mGameSprite;
      }
      
      public function get rootSprite() : Sprite
      {
         if(!this.mRootSprite)
         {
            this.mRootSprite = this.mStarling.rootObject as LevelSprite;
            this.mRootSprite.touchable = false;
         }
         return this.mRootSprite;
      }
      
      private function get shade() : DisplayObject
      {
         if(this.rootSprite)
         {
            return (this.rootSprite as LevelSprite).shade;
         }
         return null;
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.mAnimationManager;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.mTextureManager;
      }
      
      public function get camera() : LevelCamera
      {
         return this.mLevelCamera;
      }
      
      public function get objects() : LevelObjectManager
      {
         return this.mLevelObjects;
      }
      
      public function get particles() : LevelParticleManager
      {
         return this.mLevelParticles;
      }
      
      public function get background() : LevelBackground
      {
         return this.mLevelBackground;
      }
      
      public function get slingshot() : LevelSlingshot
      {
         return this.mLevelSlingshot;
      }
      
      public function get borders() : LevelBorders
      {
         return this.mLevelBorders;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function get levelItemManager() : LevelItemManager
      {
         return this.mLevelItemManager;
      }
      
      public function get cutSceneManager() : DynamicContentManager
      {
         return this.mCutSceneManager;
      }
      
      protected function get themeGraphicsManager() : DynamicContentManager
      {
         return this.mThemeGraphicsManager;
      }
      
      public function setSlowMotion(fadeInMilliSeconds:Number, durationMilliSeconds:Number, fadeOutMilliSeconds:Number, speed:Number) : void
      {
         this.mSlowMotionModifier = new GameSpeedModifier(fadeInMilliSeconds,durationMilliSeconds,fadeOutMilliSeconds,speed);
      }
      
      public function get physicsEnabled() : Boolean
      {
         return this.mPhysicsEnabled;
      }
      
      public function set physicsEnabled(enabled:Boolean) : void
      {
         this.mPhysicsEnabled = enabled;
      }
      
      public function clear() : void
      {
         var spriteSheetContainer:ISpriteSheetContainer = null;
         for(var i:int = 0; i < this.mSpriteSheetContainers.length; i++)
         {
            spriteSheetContainer = this.mSpriteSheetContainers[i];
            spriteSheetContainer.dispose();
         }
         this.mSpriteSheetContainers = new Vector.<ISpriteSheetContainer>();
         if(this.mTextureManager)
         {
            this.mTextureManager.removeEventListener(Event.INIT,this.onTexturesInitialized);
            this.mTextureManager.dispose();
         }
         if(this.mThemeGraphicsManager && this.mThemeGraphicsManager.textureManager)
         {
            this.mThemeGraphicsManager.textureManager.dispose();
         }
         if(this.mCutSceneManager && this.mCutSceneManager.textureManager)
         {
            this.mCutSceneManager.textureManager.dispose();
         }
         if(this.mStarling)
         {
            this.mStarling.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : DynamicContentManager
      {
         return new DynamicContentManager(this.mStage.loaderInfo.parameters.assetsUrl || "",this.mStage.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initThemeSoundsManager() : DynamicContentManager
      {
         return new DynamicContentManager(this.mStage.loaderInfo.parameters.assetsUrl || "",this.mStage.loaderInfo.parameters.buildNumber || "",this.mLevelManager,false);
      }
      
      protected function initCutSceneManager() : DynamicContentManager
      {
         return new DynamicContentManager(this.mStage.loaderInfo.parameters.assetsUrl || "",this.mStage.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initAnimationManager(textureManager:TextureManager) : AnimationManager
      {
         return new AnimationManager(textureManager);
      }
      
      public function setVisible(visible:Boolean) : void
      {
         if(Starling.current)
         {
            if(visible)
            {
               Starling.current.start();
            }
            else
            {
               Starling.current.stop();
               Starling.current.color = 0;
            }
         }
      }
      
      public function setGameVisible(visible:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = visible;
         }
      }
      
      public function setController(controller:ILevelMainController) : void
      {
         if(this.mController != null)
         {
            this.mController.removeEventListeners();
         }
         this.mController = controller;
         if(this.mReadyToRun)
         {
            this.mController.addEventListeners();
         }
      }
      
      public function getCurrentReplay() : Replay
      {
         return this.mCurrentReplay;
      }
      
      protected function getSpriteSheetGroup(spriteSheet:SpriteSheetBase) : int
      {
         return 0;
      }
      
      public function addNewGraphics(spriteSheetContainer:ISpriteSheetContainer, items:Array, listener:Function) : void
      {
         var spriteSheet:SpriteSheetBase = null;
         var group:int = 0;
         if(this.mSpriteSheetContainers.indexOf(spriteSheetContainer) != -1)
         {
            return;
         }
         this.mSpriteSheetContainers.push(spriteSheetContainer);
         var sheetCount:int = spriteSheetContainer.spriteSheetCount;
         for(var i:int = 0; i < sheetCount; i++)
         {
            spriteSheet = spriteSheetContainer.getSpriteSheet(i);
            group = this.getSpriteSheetGroup(spriteSheet);
            this.mTextureManager.addTextures(spriteSheet,group);
         }
         if(listener != null)
         {
            this.mEventDispatcher.addEventListener(Event.INIT,listener);
            this.mGraphicsInitListeners.push(listener);
         }
         this.mTextureManager.removeEventListener(Event.INIT,this.onTexturesInitialized);
         if(this.mTextureManager.initializeTextures())
         {
            this.mLevelItemManager.initAnimations(items);
            this.mAnimationsWaitingInitialization = false;
            this.reportGraphicsInitialization();
         }
         else
         {
            this.mTextureManager.addEventListener(Event.INIT,this.onTexturesInitialized);
            this.mAnimationsWaitingInitialization = true;
         }
      }
      
      public function initializeGraphics(spriteSheetContainer:ISpriteSheetContainer, listener:Function) : void
      {
         var spriteSheet:SpriteSheetBase = null;
         var group:int = 0;
         if(this.mSpriteSheetContainers.indexOf(spriteSheetContainer) != -1)
         {
            return;
         }
         this.mSpriteSheetContainers.push(spriteSheetContainer);
         var sheetCount:int = spriteSheetContainer.spriteSheetCount;
         for(var i:int = 0; i < sheetCount; i++)
         {
            spriteSheet = spriteSheetContainer.getSpriteSheet(i);
            group = this.getSpriteSheetGroup(spriteSheet);
            this.mTextureManager.addTextures(spriteSheet,group);
         }
         if(listener != null)
         {
            this.mEventDispatcher.addEventListener(Event.INIT,listener);
            this.mGraphicsInitListeners.push(listener);
         }
         if(this.initializeTexturesAndAnimations())
         {
            this.reportGraphicsInitialization();
         }
      }
      
      private function initializeTexturesAndAnimations() : Boolean
      {
         this.mTextureManager.removeEventListener(Event.INIT,this.onTexturesInitialized);
         if(this.mTextureManager.initializeTextures())
         {
            this.initializeAnimations();
            this.mAnimationsWaitingInitialization = false;
            return true;
         }
         this.mTextureManager.addEventListener(Event.INIT,this.onTexturesInitialized);
         this.mAnimationsWaitingInitialization = true;
         return false;
      }
      
      private function onTexturesInitialized(event:Event) : void
      {
         this.mTextureManager.removeEventListener(Event.INIT,this.onTexturesInitialized);
         this.initializeAnimations();
         this.mAnimationsWaitingInitialization = false;
         this.reportGraphicsInitialization();
      }
      
      protected function initializeAnimations() : void
      {
         this.mAnimationManager.initializeAnimations();
         this.mLevelItemManager.initAnimations();
      }
      
      private function onContextCreated(event:Event) : void
      {
         if(!Starling.contextAvailable())
         {
            return;
         }
         this.mTextureManager.reInitializeTextures();
         if(this.themeGraphicsManager && this.themeGraphicsManager.textureManager)
         {
            this.themeGraphicsManager.textureManager.reInitializeTextures();
         }
         if(this.cutSceneManager && this.cutSceneManager.textureManager)
         {
            this.cutSceneManager.textureManager.reInitializeTextures();
         }
         if(this.mAnimationsWaitingInitialization)
         {
            if(this.initializeTexturesAndAnimations())
            {
               this.reportGraphicsInitialization();
            }
         }
         if(this.mController != null && this.mReadyToRun)
         {
            this.mController.addEventListeners();
         }
         if(this.mThemeGraphicsManager)
         {
            this.mThemeGraphicsManager.initializeTextures();
         }
         if(this.mCutSceneManager)
         {
            if(this.mCutSceneManager.textureManager)
            {
               this.mCutSceneManager.initializeTextures();
            }
         }
      }
      
      private function reportGraphicsInitialization() : void
      {
         this.mEventDispatcher.dispatchEvent(new Event(Event.INIT));
         this.resetGraphicsInitializationListeners();
      }
      
      private function resetGraphicsInitializationListeners() : void
      {
         var listener:Function = null;
         for each(listener in this.mGraphicsInitListeners)
         {
            this.mEventDispatcher.removeEventListener(Event.INIT,listener);
         }
         this.mGraphicsInitListeners = [];
      }
      
      public function init(level:LevelModel) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         sCurrentTheme = level.theme;
         this.mCurrentLevel = level;
         this.mLevelBorders = this.createLevelBorder(level);
         this.mLevelCamera = this.initializeLevelCamera(level);
         this.mPhysicsTimeOffsetMilliSeconds = 0;
         this.mLevelTimeMilliSeconds = 0;
         this.mActivateSpecialPower = false;
         this.mReadyToRun = false;
         this.mCanNotRun = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         this.mObjectBlinkAnimationTimer = 1500;
         this.mObjectScreamAnimationTimer = 3000;
         this.mSlippingSoundTimer = 0;
         level.theme = level.theme || "background_blue_grass";
         this.mGraphicsAvailable = this.isThemeGraphicsAvailable(level.theme);
         this.mSoundsAvailable = this.isThemeSoundsAvailable(level.theme);
         if(this.mGraphicsAvailable && this.mSoundsAvailable)
         {
            this.initialize(level);
         }
         else
         {
            this.loadTheme(level.theme);
         }
         this.initReplay(level.name);
         ScoreCollector.init();
         this.addEventListeners();
      }
      
      protected function createLevelBorder(level:LevelModel) : LevelBorders
      {
         return new LevelBorders(this,level);
      }
      
      public function addEventListeners() : void
      {
         AngryBirdsEngine.smApp.addEventListener(FrameUpdateEvent.UPDATE,this.mStarling.onEnterFrame);
         this.mIsStarlingRunning = true;
      }
      
      protected function initReplay(levelName:String) : void
      {
         this.mCurrentReplay = new Replay(levelName);
      }
      
      protected function isThemeGraphicsAvailable(theme:String) : Boolean
      {
         if(this.mThemeGraphicsManager)
         {
            return false;
         }
         return true;
      }
      
      protected function isThemeSoundsAvailable(theme:String) : Boolean
      {
         var background:LevelThemeBackground = null;
         if(this.mThemeSoundsManager && !this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            background = this.mLevelThemeManager.getBackground(theme);
            if(background)
            {
               if(background.ambientSoundName && !this.mThemeSoundsManager.isContentFileAvailable(background.ambientSoundName))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function getThemeGraphicsLoadList(themeName:String) : Array
      {
         return null;
      }
      
      protected function loadTheme(themeName:String) : void
      {
         this.loadThemeGraphics(themeName);
      }
      
      protected function loadThemeGraphics(themeName:String) : void
      {
         var loadList:Array = null;
         if(this.mThemeGraphicsManager && !this.isThemeGraphicsAvailable(themeName))
         {
            this.mThemeGraphicsManager.removeEventListener(Event.COMPLETE,this.onThemeGraphicsAvailable);
            this.mThemeGraphicsManager.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            this.mThemeGraphicsManager.addEventListener(Event.COMPLETE,this.onThemeGraphicsAvailable);
            this.mThemeGraphicsManager.addEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            loadList = this.getThemeGraphicsLoadList(themeName);
            this.mThemeGraphicsManager.loadContent(themeName,loadList);
         }
         else
         {
            this.loadThemeSounds(themeName);
         }
      }
      
      protected function loadThemeSounds(themeName:String) : void
      {
         var background:LevelThemeBackground = null;
         if(this.mThemeSoundsManager && !this.isThemeSoundsAvailable(themeName))
         {
            this.mThemeSoundsManager.removeEventListener(Event.COMPLETE,this.onThemeSoundsAvailable);
            this.mThemeSoundsManager.removeEventListener(Event.CANCEL,this.onThemeSoundsNotAvailable);
            this.mThemeSoundsManager.addEventListener(Event.COMPLETE,this.onThemeSoundsAvailable);
            this.mThemeSoundsManager.addEventListener(Event.CANCEL,this.onThemeSoundsNotAvailable);
            background = this.mLevelThemeManager.getBackground(themeName);
            if(background)
            {
               this.mThemeSoundsManager.loadContent(background.ambientSoundName);
            }
         }
         else
         {
            this.initialize(this.mCurrentLevel);
         }
      }
      
      protected function onThemeGraphicsAvailable(e:Event) : void
      {
         this.mThemeGraphicsManager.removeEventListener(Event.COMPLETE,this.onThemeGraphicsAvailable);
         this.mThemeGraphicsManager.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.mGraphicsAvailable = true;
         this.loadThemeSounds(this.mCurrentLevel.theme);
      }
      
      protected function onThemeGraphicsNotAvailable(e:Event) : void
      {
         this.mThemeGraphicsManager.removeEventListener(Event.COMPLETE,this.onThemeGraphicsAvailable);
         this.mThemeGraphicsManager.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.mCanNotRun = true;
      }
      
      protected function onThemeSoundsAvailable(e:Event) : void
      {
         this.mThemeGraphicsManager.removeEventListener(Event.COMPLETE,this.onThemeSoundsAvailable);
         this.mThemeGraphicsManager.removeEventListener(Event.CANCEL,this.onThemeSoundsNotAvailable);
         this.mSoundsAvailable = true;
         if(this.mGraphicsAvailable && this.mSoundsAvailable)
         {
            this.initialize(this.mCurrentLevel);
         }
      }
      
      protected function onThemeSoundsNotAvailable(e:Event) : void
      {
         this.mThemeGraphicsManager.removeEventListener(Event.COMPLETE,this.onThemeSoundsAvailable);
         this.mThemeGraphicsManager.removeEventListener(Event.CANCEL,this.onThemeSoundsNotAvailable);
         this.mSoundsAvailable = true;
         if(this.mGraphicsAvailable && this.mSoundsAvailable)
         {
            this.initialize(this.mCurrentLevel);
         }
      }
      
      public function get backgroundTextureManager() : TextureManager
      {
         if(this.themeGraphicsManager)
         {
            return this.themeGraphicsManager.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(level:LevelModel) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.LINEAR_SLEEP_TOLERANCE_DEFAULT;
      }
      
      protected function initialize(level:LevelModel) : void
      {
         this.mSlowMotionModifier = null;
         this.mMEInUse = false;
         if(Starling.juggler)
         {
            Starling.juggler.speed = 1;
         }
         this.initializePhysicsConstants(level);
         this.initLevelEngine(level);
         this.mLevelBackground = this.initializeLevelBackground(level.theme,0 / PIXEL_TO_B2_SCALE,this.backgroundTextureManager,this.mLevelCamera.getMinimumScale());
         this.mLevelBackground.setParticlesEnabled(AngryBirdsEngine.getParticlesEnabled());
         if(Starling.current)
         {
            Starling.current.color = this.mLevelBackground.skyColor;
         }
         this.mLevelObjects = this.initializeLevelObjectManager(level);
         this.mLevelObjects.levelLogic = this.initializeLevelLogic(level.name);
         this.mLevelSlingshot = this.initializeLevelSlingshot(level);
         this.mLevelParticles = this.initializeParticleManager(this.mAnimationManager,this.mTextureManager);
         this.mLevelCamera.init();
         this.addItemsToDisplayList();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.mController)
         {
            this.mController.addEventListeners();
         }
         if(level.name == sPreviousLevel)
         {
            this.mLevelCamera.snapManualScale(sPreviousScale);
            this.updateLevelGraphics(0);
         }
         else
         {
            sPreviousLevel = level.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.mLevelObjects.levelInitialized();
      }
      
      protected function initLevelEngine(level:LevelModel) : void
      {
         this.mLevelEngine = new LevelEngineBox2D(this);
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.mReplayData)
         {
            this.mPreviousReplay = Replay.initialize(this.mReplayData);
            this.mPreviousReplay.speed = 1;
            this.mPreviousReplay.play();
            this.mReplayUpdateTimeMilliSeconds = -1000;
            this.mReplayData = null;
         }
      }
      
      public function initializeReplay(data:String) : void
      {
         this.mReplayData = data;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.mPreviousReplay != null;
      }
      
      public function changeReplaySpeed(increase:Boolean) : void
      {
         if(this.mPreviousReplay)
         {
            if(increase)
            {
               this.mPreviousReplay.speed = Math.min(this.mPreviousReplay.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.mPreviousReplay.speed = Math.max(this.mPreviousReplay.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.mPreviousReplay)
         {
            this.mPreviousReplay.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(level:LevelModel) : LevelObjectManager
      {
         var groundType:String = LevelThemeBackground.GROUND_TYPE;
         return new LevelObjectManager(this,level,new Sprite(),groundType);
      }
      
      protected function initializeLevelLogic(levelName:String) : ILevelLogic
      {
         if(!levelName)
         {
            return null;
         }
         var logicClass:Class = this.mLevelLogicClasses[levelName.toLowerCase()];
         if(!logicClass)
         {
            return null;
         }
         return new logicClass() as ILevelLogic;
      }
      
      public function registerCustomLevelLogic(levelName:String, levelLogic:Class) : void
      {
         this.mLevelLogicClasses[levelName.toLowerCase()] = levelLogic;
      }
      
      protected function initializeLevelCamera(level:LevelModel) : LevelCamera
      {
         return new LevelCamera(this,level);
      }
      
      protected function initializeLevelBackground(name:String, groundLevel:Number, textureManager:TextureManager, minimumScale:Number) : LevelBackground
      {
         var background:LevelThemeBackground = this.mLevelThemeManager.getBackground(name);
         if(background == null)
         {
            Log.log("UNKNOWN LEVEL THEME! " + name);
            name = LevelModel.DEFAULT_THEME;
            background = this.mLevelThemeManager.getBackground(name);
         }
         return new LevelBackground(this,background,groundLevel,textureManager,minimumScale,!Starling.isSoftware);
      }
      
      protected function initializeLevelSlingshot(level:LevelModel) : LevelSlingshot
      {
         return new LevelSlingshot(this,level,new Sprite());
      }
      
      protected function initializeParticleManager(animationManager:AnimationManager, textureManager:TextureManager) : LevelParticleManager
      {
         return new LevelParticleManager(animationManager,textureManager);
      }
      
      public function initializeEmptyEnvironment(theme:String = null, fallingBirds:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var level:LevelModel = new LevelModel();
         level.slingshotY = -12;
         var slingshotCamera:LevelCameraModel = new LevelCameraModel();
         slingshotCamera.left = 0;
         slingshotCamera.top = -LevelCamera.SCREEN_HEIGHT_B2 / 10 * 8;
         slingshotCamera.bottom = slingshotCamera.top + LevelCamera.SCREEN_HEIGHT_B2;
         slingshotCamera.right = slingshotCamera.left + LevelCamera.SCREEN_WIDTH_B2;
         slingshotCamera.y = -13.929;
         slingshotCamera.x = LevelCamera.SCREEN_WIDTH_B2;
         slingshotCamera.id = LevelCamera.CAMERA_ID_SLINGSHOT;
         level.addCamera(slingshotCamera);
         var castleCamera:LevelCameraModel = new LevelCameraModel();
         castleCamera.top = slingshotCamera.top;
         castleCamera.bottom = slingshotCamera.bottom;
         castleCamera.left = 150;
         castleCamera.right = castleCamera.left + LevelCamera.SCREEN_WIDTH_B2;
         castleCamera.bottom = castleCamera.top + LevelCamera.SCREEN_HEIGHT_B2;
         castleCamera.y = slingshotCamera.y;
         castleCamera.x = castleCamera.left + LevelCamera.SCREEN_WIDTH_B2 / 2;
         castleCamera.id = LevelCamera.CAMERA_ID_CASTLE;
         level.addCamera(castleCamera);
         this.postProcessEmptyEnvironment(level,fallingBirds);
         if(theme != null)
         {
            level.theme = theme;
         }
         else if(sCurrentTheme != null)
         {
            level.theme = sCurrentTheme;
         }
         this.init(level);
      }
      
      protected function postProcessEmptyEnvironment(level:LevelModel, fallingBirds:Boolean) : void
      {
         if(fallingBirds)
         {
            this.addFallingBirds(level);
         }
      }
      
      protected function XORandom() : Number
      {
         this.mXORvalue ^= this.mXORvalue << 21;
         this.mXORvalue ^= this.mXORvalue >>> 35;
         this.mXORvalue ^= this.mXORvalue << 4;
         return this.mXORvalue * (1 / uint.MAX_VALUE);
      }
      
      protected function addFallingBirds(level:LevelModel) : void
      {
         var x:int = 0;
         var type:int = 0;
         var item:LevelObjectModel = null;
         this.mXORvalue = 0.33 * uint.MAX_VALUE;
         var runningId:int = 0;
         for(var y:int = 0; y < 10; y++)
         {
            for(x = 0; x < 5; x++)
            {
               type = this.XORandom() * 5;
               item = new LevelObjectModel();
               item.x = 30 + x * 10 + this.XORandom() * 9;
               if(y == 0)
               {
                  item.y = 0;
                  if(x == 1 || x == 2 || x == 4)
                  {
                     item.type = "PIG_MUSTACHE";
                  }
                  else
                  {
                     item.type = "PIG_HELMET";
                  }
                  item.angle = 45 - this.XORandom() * 90;
               }
               else
               {
                  item.y = -30 + y * 6 - this.XORandom() * 3 - x * 8;
                  type = (x * x + y * x + y) % 5;
                  if(type < 2)
                  {
                     item.type = "BIRD_RED";
                  }
                  else if(type == 3)
                  {
                     item.type = "BIRD_YELLOW";
                  }
                  else
                  {
                     item.type = "BIRD_BLUE";
                  }
                  item.angle = this.XORandom() * 360;
               }
               item.id = runningId;
               level.addObject(item);
               runningId++;
            }
         }
      }
      
      private function addBirdParticles() : void
      {
      }
      
      protected function addThemeBackgroundSpritesToDisplayList() : void
      {
         if(LevelBackground.SHOW_BACKGROUNDS)
         {
            this.addItemToDisplayList(this.mLevelBackground.backgroundLayersSprite);
         }
      }
      
      protected function addBackgroundSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.mLevelObjects.backgroundSprite);
         this.addItemToDisplayList(this.mLevelParticles.getGroupSprite(LevelParticleManager.PARTICLE_GROUP_TRAILS_OLD));
         this.addItemToDisplayList(this.mLevelParticles.getGroupSprite(LevelParticleManager.PARTICLE_GROUP_TRAILS));
      }
      
      protected function addGameSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.mLevelParticles.getGroupSprite(LevelParticleManager.PARTICLE_GROUP_BACKGROUND_EFFECTS));
         this.addItemToDisplayList(this.mLevelObjects.mainSprite);
         this.addItemToDisplayList(this.mLevelSlingshot.sprite);
         this.addItemToDisplayList(this.mLevelParticles.getGroupSprite(LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS));
         this.addItemToDisplayList(this.mLevelObjects.inFrontObjectSprite);
      }
      
      protected function addThemeForegroundSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.mLevelBackground.groundSprite);
         if(LevelBackground.SHOW_BACKGROUNDS)
         {
            this.addItemToDisplayList(this.mLevelBackground.foregroundLayersSprite);
         }
      }
      
      protected function addOverlaySpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.mLevelObjects.overlaySprite);
         this.addItemToDisplayList(this.mLevelParticles.getGroupSprite(LevelParticleManager.PARTICLE_GROUP_FLOATING_TEXT));
         this.addItemToDisplayList(this.mLevelParticles.getGroupSprite(LevelParticleManager.PARTICLE_GROUP_FOREGROUND_EFFECTS));
      }
      
      private function addItemsToDisplayList() : void
      {
         this.addThemeBackgroundSpritesToDisplayList();
         this.addBackgroundSpritesToDisplayList();
         this.addGameSpritesToDisplayList();
         this.addThemeForegroundSpritesToDisplayList();
         this.addOverlaySpritesToDisplayList();
      }
      
      protected function addItemToDisplayList(item:DisplayObject) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(item);
         }
      }
      
      public function screenToBox2D(x:Number, y:Number, point:Point = null) : Point
      {
         if(!point)
         {
            point = new Point();
         }
         if(AngryBirdsEngine.sWidthScale > AngryBirdsEngine.sHeightScale)
         {
            x /= AngryBirdsEngine.sWidthScale;
            y /= AngryBirdsEngine.sWidthScale;
         }
         else
         {
            x /= AngryBirdsEngine.sHeightScale;
            y /= AngryBirdsEngine.sHeightScale;
         }
         point.x = ((x - this.sprite.x) / LevelCamera.levelScale + this.mLevelCamera.screenLeftScroll) * PIXEL_TO_B2_SCALE;
         point.y = ((y - this.sprite.y) / LevelCamera.levelScale + this.mLevelCamera.screenTopScroll) * PIXEL_TO_B2_SCALE;
         return point;
      }
      
      public function box2DToScreen(x:Number, y:Number, point:Point = null) : Point
      {
         if(!point)
         {
            point = new Point();
         }
         point.x = (x / PIXEL_TO_B2_SCALE - this.mLevelCamera.screenLeftScroll) * LevelCamera.levelScale + this.sprite.x;
         point.y = (y / PIXEL_TO_B2_SCALE - this.mLevelCamera.screenTopScroll) * LevelCamera.levelScale + this.sprite.y;
         var scale:Number = Math.max(AngryBirdsEngine.sWidthScale,AngryBirdsEngine.sHeightScale);
         point.x *= scale;
         point.y *= scale;
         return point;
      }
      
      public function setScreenOffset(x:Number, y:Number, scale:Number) : void
      {
         this.sprite.scaleX = scale;
         this.sprite.scaleY = scale;
         if(this.background)
         {
            this.background.setScreenOffset(x,y,this.mScreenWidth,this.mScreenHeight,scale,this.mScreenWidthScale,this.mScreenHeightScale);
         }
         if(this.objects)
         {
            this.objects.updateScrollAndScale(x,y);
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.updateScrollAndScale(x,y);
         }
         if(this.slingshot)
         {
            this.slingshot.updateScrollAndScale(x,y);
         }
         if(this.particles)
         {
            this.particles.updateScrollAndScale(x,y);
         }
      }
      
      public function createObjectFromMaterial(materialName:String, x:Number, y:Number) : void
      {
         this.mLevelObjects.addObject(materialName,x,y,0,LevelObjectManager.ID_NEXT_FREE);
      }
      
      public function startShadingEffect() : void
      {
         if(this.shade)
         {
            this.shade.visible = true;
            this.shade.alpha = 0;
         }
         this.mShadingCounter = 0;
      }
      
      public function setCameraShaking(shake:Boolean, frequency:Number = 0, amplitude:Number = 0, durationMilliSeconds:Number = 0) : void
      {
         if(shake)
         {
            if(this.mCameraShaker)
            {
               this.mCameraShaker.upgradeToFrequency(frequency);
               this.mCameraShaker.upgradeToAmplitude(amplitude);
               this.mCameraShaker.upgradeTime(durationMilliSeconds);
            }
            else
            {
               this.mCameraShaker = new LevelCameraShaker(frequency,amplitude,durationMilliSeconds);
            }
         }
         else
         {
            this.mLevelCamera.setOffset(0,0);
            this.mCameraShaker = null;
         }
      }
      
      public function clearLevel() : void
      {
         this.mBehaviorManager.clear();
         if(this.mLevelBackground)
         {
            this.mLevelBackground.dispose();
            this.mLevelBackground = null;
         }
         if(this.mLevelObjects)
         {
            this.mLevelObjects.dispose();
            this.mLevelObjects = null;
         }
         this.mLevelInitialScoreSafetyTimer = this.LEVEL_INITIAL_SCORE_SAFETY_TIME;
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.mDebugSprite)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.mLevelBorders)
         {
            this.mLevelBorders.clear();
            this.mLevelBorders = null;
         }
         if(this.mLevelSlingshot)
         {
            this.mLevelSlingshot.dispose();
            this.mLevelSlingshot = null;
         }
         if(this.mLevelCamera)
         {
            sPreviousScale = this.mLevelCamera.manualScale;
            this.mLevelCamera.clear();
            this.mLevelCamera = null;
         }
         if(this.mLevelParticles)
         {
            this.mLevelParticles.dispose();
            this.mLevelParticles = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.mPhysicsTimeOffsetMilliSeconds = 0;
         this.mLevelTimeMilliSeconds = 0;
         this.mReadyToRun = false;
         this.mActivateSpecialPower = false;
         this.mShadingCounter = Tuner.MIGHTY_EAGLE_SHADING_DURATION;
         if(this.rootSprite)
         {
            (this.rootSprite as LevelSprite).shakeContainer.x = 0;
            (this.rootSprite as LevelSprite).shakeContainer.y = 0;
         }
         if(this.shade)
         {
            this.shade.visible = false;
         }
         this.mPreviousReplay = null;
         this.mCurrentReplay = null;
         if(this.mThemeGraphicsManager)
         {
            this.mThemeGraphicsManager.removeEventListener(Event.COMPLETE,this.onThemeGraphicsAvailable);
            this.mThemeGraphicsManager.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         }
         if(this.mThemeSoundsManager)
         {
            this.mThemeSoundsManager.removeEventListener(Event.COMPLETE,this.onThemeSoundsAvailable);
            this.mThemeSoundsManager.removeEventListener(Event.CANCEL,this.onThemeSoundsNotAvailable);
         }
         this.resetGraphicsInitializationListeners();
         if(Starling.current)
         {
            Starling.current.color = 0;
         }
         if(this.mController)
         {
            this.mController.removeEventListeners();
         }
         AngryBirdsEngine.smApp.removeEventListener(FrameUpdateEvent.UPDATE,this.mStarling.onEnterFrame);
         this.mIsStarlingRunning = false;
         this.mReadyToRun = false;
      }
      
      public function gameOver(levelID:int) : void
      {
      }
      
      public function getReplay() : String
      {
         if(this.mCurrentReplay)
         {
            return this.mCurrentReplay.toString();
         }
         return null;
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         if(this.mSlowMotionModifier)
         {
            return this.mSlowMotionModifier.speed;
         }
         return 1;
      }
      
      public function update(deltaTimeMilliSeconds:Number, updateSlingshot:Boolean) : Number
      {
         if(!this.mReadyToRun || !Starling.contextAvailable())
         {
            return 0;
         }
         if(this.mLevelInitialScoreSafetyTimer > 0)
         {
            this.mLevelInitialScoreSafetyTimer -= deltaTimeMilliSeconds;
         }
         if(this.mPreviousReplay && this.mPreviousReplay.isPlaying)
         {
            return this.updateWithReplay(deltaTimeMilliSeconds,updateSlingshot);
         }
         return this.updateWithTime(deltaTimeMilliSeconds,true,updateSlingshot);
      }
      
      protected function updateWithTime(deltaTimeMilliSeconds:Number, updateGraphics:Boolean, updateSlingshot:Boolean) : Number
      {
         var isLive:Boolean = false;
         if(this.mSlowMotionModifier)
         {
            isLive = this.mSlowMotionModifier.update(deltaTimeMilliSeconds);
            deltaTimeMilliSeconds *= this.mSlowMotionModifier.speed;
            if(Starling.juggler)
            {
               Starling.juggler.speed = this.mSlowMotionModifier.speed;
            }
            if(!isLive)
            {
               this.mSlowMotionModifier = null;
            }
         }
         this.mLevelTimeMilliSeconds += deltaTimeMilliSeconds;
         if(this.physicsEnabled)
         {
            this.mPhysicsTimeOffsetMilliSeconds += deltaTimeMilliSeconds;
            this.mPhysicsTimeOffsetMilliSeconds = this.mLevelEngine.updateWorld(this.mPhysicsTimeOffsetMilliSeconds);
         }
         else
         {
            this.mPhysicsTimeOffsetMilliSeconds = 0;
            this.handleEngineUpdateStep(deltaTimeMilliSeconds);
         }
         this.mLevelSlingshot.update(deltaTimeMilliSeconds,updateSlingshot);
         if(updateGraphics)
         {
            this.updateLevelGraphics(deltaTimeMilliSeconds);
         }
         this.mBehaviorManager.update(deltaTimeMilliSeconds);
         return deltaTimeMilliSeconds;
      }
      
      private function updateWithReplay(deltaTimeMilliSeconds:Number, updateSlingshot:Boolean) : Number
      {
         var newTimeMilliSeconds:Number = NaN;
         var stepDurationMilliSeconds:Number = LevelEngineBox2D.UPDATE_TIME_STEP_MILLISECONDS;
         if(this.mPreviousReplay)
         {
            deltaTimeMilliSeconds *= this.mPreviousReplay.speed;
            newTimeMilliSeconds = this.mLevelTimeMilliSeconds + deltaTimeMilliSeconds;
            while(this.mLevelTimeMilliSeconds + stepDurationMilliSeconds < newTimeMilliSeconds)
            {
               if(this.mLevelTimeMilliSeconds + stepDurationMilliSeconds > this.mReplayUpdateTimeMilliSeconds)
               {
                  this.mPreviousReplay.step(this);
                  this.mReplayUpdateTimeMilliSeconds += stepDurationMilliSeconds;
               }
               this.updateWithTime(stepDurationMilliSeconds,false,updateSlingshot);
            }
            if(newTimeMilliSeconds > this.mReplayUpdateTimeMilliSeconds + stepDurationMilliSeconds)
            {
               this.mPreviousReplay.step(this);
               this.mReplayUpdateTimeMilliSeconds += stepDurationMilliSeconds;
            }
            if(this.mLevelTimeMilliSeconds < newTimeMilliSeconds)
            {
               this.updateWithTime(newTimeMilliSeconds - this.mLevelTimeMilliSeconds,true,updateSlingshot);
            }
            return deltaTimeMilliSeconds;
         }
         return deltaTimeMilliSeconds;
      }
      
      private function updateLevelGraphics(deltaTimeMilliSeconds:Number) : void
      {
         var t0:Number = NaN;
         var shadingAlpha:Number = NaN;
         if(this.mLevelBackground)
         {
            this.mLevelBackground.update(deltaTimeMilliSeconds);
         }
         this.mLevelObjects.renderObjects(deltaTimeMilliSeconds,this.mLevelEngine.timeStepForLastUpdateMilliSeconds,this.mPhysicsTimeOffsetMilliSeconds);
         this.updateTrailingObjects();
         if(this.mShadingCounter < Tuner.MIGHTY_EAGLE_SHADING_DURATION)
         {
            this.mShadingCounter += deltaTimeMilliSeconds;
            t0 = Tuner.MIGHTY_EAGLE_SHADING_DURATION / 2;
            shadingAlpha = (-Math.abs(this.mShadingCounter - t0) + t0) * (Tuner.MIGHTY_EAGLE_MAX_SHADING_INTENSITY / t0);
            if(this.shade)
            {
               this.shade.alpha = shadingAlpha;
            }
         }
         else if(this.shade)
         {
            this.shade.visible = false;
         }
         if(this.mCameraShaker)
         {
            if(!this.mCameraShaker.shake(this.mLevelCamera,deltaTimeMilliSeconds))
            {
               this.setCameraShaking(false);
            }
         }
         this.mLevelCamera.updateCamera(deltaTimeMilliSeconds);
         this.mLevelEngine.drawDebugData();
         this.mLevelParticles.update(deltaTimeMilliSeconds);
         this.updatePigAnimations(deltaTimeMilliSeconds);
         this.updateObjectAnimations(deltaTimeMilliSeconds);
      }
      
      public function handleEngineUpdateStep(timeStepMilliSeconds:Number) : void
      {
         this.objects.updateObjects(timeStepMilliSeconds);
         this.handleSpecialPowerActivation();
      }
      
      protected function updateTrailingObjects() : void
      {
         var obj:LevelObject = null;
         if(this.mTrailingObjects != null)
         {
            for each(obj in this.mTrailingObjects)
            {
               if(!obj.isLeavingTrail)
               {
                  this.removeTrailingObject(obj);
               }
            }
         }
      }
      
      public function updatePigAnimations(deltaTime:Number) : void
      {
         var pig:LevelObjectPig = null;
         this.mPigsAnimationTimer1 -= deltaTime;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            pig = this.mLevelObjects.getRandomPig(true);
            if(pig)
            {
               pig.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.mLevelObjects.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= deltaTime;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            pig = this.mLevelObjects.getRandomPig(true);
            if(pig)
            {
               pig.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.mLevelObjects.getPigCount());
            }
         }
      }
      
      public function updateObjectAnimations(deltaTime:Number) : void
      {
         var animatableObjects:Array = null;
         var levelObject:LevelObject = null;
         var randomIndex:int = 0;
         var slippingObject:LevelObject = null;
         var slippingSoundEffect:SoundEffect = null;
         if(this.mObjectScreamAnimationTimer > 0)
         {
            this.mObjectScreamAnimationTimer -= deltaTime;
         }
         if(this.mObjectBlinkAnimationTimer > 0)
         {
            this.mObjectBlinkAnimationTimer -= deltaTime;
         }
         if(this.mObjectBlinkAnimationTimer <= 0 || this.mObjectScreamAnimationTimer <= 0)
         {
            animatableObjects = this.mLevelObjects.getAnimatableObjectIndices();
            if(animatableObjects.length > 0)
            {
               levelObject = null;
               if(this.mObjectBlinkAnimationTimer <= 0)
               {
                  randomIndex = Math.random() * animatableObjects.length;
                  levelObject = this.mLevelObjects.getObject(animatableObjects[randomIndex]) as LevelObject;
                  if(levelObject)
                  {
                     levelObject.blink();
                     this.mObjectBlinkAnimationTimer = 250 + Math.random() * 500 + 2000 / (3 + animatableObjects.length);
                  }
               }
               if(this.mObjectScreamAnimationTimer <= 0)
               {
                  randomIndex = Math.random() * animatableObjects.length;
                  levelObject = this.mLevelObjects.getObject(animatableObjects[randomIndex]) as LevelObject;
                  if(levelObject)
                  {
                     levelObject.scream();
                     this.mObjectScreamAnimationTimer = 1500 + Math.random() * 3000 + 4000 / (3 + animatableObjects.length);
                  }
               }
            }
         }
         if(this.mSlippingSoundTimer <= 0)
         {
            slippingObject = this.mLevelObjects.getRandomSlippingObject();
            if(slippingObject)
            {
               slippingSoundEffect = slippingObject.playFearSound();
               if(slippingSoundEffect)
               {
                  this.mSlippingSoundTimer = slippingSoundEffect.lengthMilliSeconds;
               }
            }
         }
         else
         {
            this.mSlippingSoundTimer -= deltaTime;
         }
      }
      
      public function addScore(newScore:int, scoreType:String, showScore:Boolean = false, newX:Number = 0, newY:Number = 0, newMaterial:int = -9999, floatingScoreFont:String = null) : void
      {
         if(this.mLevelInitialScoreSafetyTimer > 0)
         {
            return;
         }
         if(newMaterial == -9999)
         {
            newMaterial = LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC;
         }
         ScoreCollector.addScore(newScore,scoreType);
         this.mController.addScore(newScore);
         if(showScore && newScore > 0 && !this.mMEInUse)
         {
            this.addFloatingText(newScore.toString(),newX,newY,800,newMaterial,0,0,floatingScoreFont);
         }
      }
      
      public function addFloatingText(text:String, x:Number = 0, y:Number = 0, lifetime:Number = 1000, material:int = -9999, xSpeed:Number = 0, ySpeed:Number = -3, floatingScoreFont:String = null) : void
      {
         if(material == -9999)
         {
            material = LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE;
         }
         this.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_FLOATING_TEXT,LevelParticleManager.PARTICLE_GROUP_FLOATING_TEXT,LevelParticle.PARTICLE_TYPE_FLOATING_TEXT,x,y,lifetime,text,material,xSpeed,ySpeed,0,0,1,-1,false,floatingScoreFont);
      }
      
      public function addTrailingObject(obj:LevelObjectBase) : void
      {
         if(this.mTrailingObjects == null)
         {
            this.mTrailingObjects = new Array();
         }
         this.mTrailingObjects.push(obj);
      }
      
      public function useMightyEagle() : void
      {
         this.mLevelSlingshot.useMightyEagle();
         this.mLevelObjects.resetBirds();
         this.mMEInUse = true;
      }
      
      public function removeTrailingObject(obj:LevelObject) : void
      {
         this.mLevelParticles.clearGroup(LevelParticleManager.PARTICLE_GROUP_TRAILS_OLD);
         if(this.mTrailingObjects.indexOf(obj) >= 0)
         {
            this.mTrailingObjects.splice(this.mTrailingObjects.indexOf(obj),1);
         }
         if(this.mTrailingObjects.length == 0)
         {
            this.mTrailingObjects = null;
         }
      }
      
      public function shootBird(bird:LevelSlingshotObject, power:Number, angle:Number) : LevelObjectBird
      {
         var birdObject:LevelObjectBird = LevelObjectBird(this.mLevelObjects.addObject(bird.name,bird.x,bird.y,0,LevelObjectManager.ID_NEXT_FREE,true,true,true,bird.scale));
         var force:Number = bird.launchSpeed;
         birdObject.setPowerUpDamageMultiplier(bird.powerUpDamageMultiplier);
         birdObject.setPowerUpVelocityMultiplier(bird.powerUpVelocityMultiplier);
         if(bird.powerUpSpeed != 0)
         {
            force = bird.powerUpSpeed;
         }
         var speedX:Number = -force * power * Math.cos(angle / (180 / Math.PI));
         var speedY:Number = force * power * Math.sin(angle / (180 / Math.PI));
         birdObject.applyLinearVelocity(new b2Vec2(speedX,speedY),false,true);
         birdObject.isLeavingTrail = true;
         this.camera.setAction(LevelCamera.ACTION_FOLLOW_BIRD);
         if(this.mCurrentReplay)
         {
            this.mCurrentReplay.shootBird(this.mLevelEngine.currentStep,bird.x,bird.y,power,angle);
         }
         return birdObject;
      }
      
      public function activateSpecialPower(targetX:Number, targetY:Number) : void
      {
         this.mActivateSpecialPower = true;
         this.mSpecialPowerTargetX = targetX;
         this.mSpecialPowerTargetY = targetY;
      }
      
      private function handleSpecialPowerActivation() : void
      {
         if(!this.mActivateSpecialPower)
         {
            return;
         }
         this.mActivateSpecialPower = false;
         if(this.mLevelObjects.activeObject is LevelObjectBird)
         {
            this.mLevelObjects.activateSpecialPower(this.mSpecialPowerTargetX,this.mSpecialPowerTargetY);
         }
         if(this.mCurrentReplay)
         {
            this.mCurrentReplay.activateBirdPower(this.mLevelEngine.currentStep,this.mSpecialPowerTargetX,this.mSpecialPowerTargetY);
         }
      }
      
      public function cheatKillAllTheLevelGoals() : void
      {
         this.mLevelObjects.cheatKillAllTheLevelGoals();
      }
      
      public function cheatKillAllTheDynamites() : void
      {
         this.mLevelObjects.cheatKillDynamites();
      }
      
      public function getCurrentLevelData() : LevelModel
      {
         var tmp:LevelModel = new LevelModel();
         tmp.scoreGold = this.mCurrentLevel.scoreGold;
         tmp.scoreSilver = this.mCurrentLevel.scoreSilver;
         tmp.scoreEagle = this.mCurrentLevel.scoreEagle;
         tmp.blockDestructionScorePercentage = this.mCurrentLevel.blockDestructionScorePercentage;
         tmp.worldGravity = this.mCurrentLevel.worldGravity;
         tmp.borderTop = this.mCurrentLevel.borderTop;
         tmp.borderGround = this.mCurrentLevel.borderGround;
         tmp.borderLeft = this.mCurrentLevel.borderLeft;
         tmp.borderRight = this.mCurrentLevel.borderRight;
         this.mLevelCamera.writeCameraInformation(tmp);
         this.mLevelObjects.writeObjectInformation(tmp);
         this.mLevelSlingshot.writeSlingshotInformation(tmp);
         tmp.theme = !!this.mLevelBackground ? this.mLevelBackground.getCurrentThemeName() : "background_blue_grass";
         return tmp;
      }
      
      public function getScoreSilver() : int
      {
         return this.mCurrentLevel.scoreSilver;
      }
      
      public function getScoreGold() : int
      {
         return this.mCurrentLevel.scoreGold;
      }
      
      public function setScoreSilver(val:int) : void
      {
         this.mCurrentLevel.scoreSilver = val;
      }
      
      public function setScoreGold(val:int) : void
      {
         this.mCurrentLevel.scoreGold = val;
      }
      
      public function getWorldGravity() : Number
      {
         return this.mCurrentLevel.worldGravity;
      }
      
      public function setWorldGravity(worldGravity:Number) : void
      {
         this.mCurrentLevel.worldGravity = worldGravity;
      }
      
      public function setLevelBorders(sky:Number, ground:Number, left:Number, right:Number) : void
      {
         if(this.mLevelBorders)
         {
            this.mLevelBorders.setLevelBorders(sky,ground,left,right);
         }
         if(this.mCurrentLevel)
         {
            this.mCurrentLevel.borderTop = sky;
            this.mCurrentLevel.borderGround = ground;
            this.mCurrentLevel.borderLeft = left;
            this.mCurrentLevel.borderRight = right;
         }
      }
      
      public function screenSizeChanged(width:Number, height:Number, widthScale:Number, heightScale:Number) : void
      {
         this.mScreenWidth = width;
         this.mScreenHeight = height;
         this.mScreenWidthScale = widthScale;
         this.mScreenHeightScale = heightScale;
         if(this.mRootSprite)
         {
            this.mRootSprite.updateSize(width,height);
         }
         if(this.mLevelCamera)
         {
            this.mLevelCamera.updateCamera(0);
         }
      }
      
      public function isCollisionExcluded(levelObject1:LevelObjectBase, levelObject2:LevelObjectBase) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : LevelModel
      {
         return this.mCurrentLevel;
      }
      
      public function get levelObjects() : LevelObjectManager
      {
         return this.mLevelObjects;
      }
      
      protected function get starling() : Starling
      {
         return this.mStarling;
      }
      
      public function get damageParticleLimit() : int
      {
         return MAX_PARTICLE_COUNT;
      }
      
      public function get specialBehaviors() : Array
      {
         return this.mBehaviorManager.allBehaviors();
      }
      
      public function registerBehaviorForEvent(type:String, event:String) : Boolean
      {
         return this.mBehaviorManager.registerForEvent(type,event,this);
      }
   }
}
