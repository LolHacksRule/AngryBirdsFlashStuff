package com.angrybirds.engine
{
   import com.rovio.graphics.TextureManager;
   import com.rovio.graphics.DynamicContentManager;
   import com.rovio.graphics.AnimationManager;
   import com.angrybirds.engine.levels.ILevelLogic;
   import com.rovio.utils.HashMap;
   import com.rovio.utils.Integer;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.rovio.spritesheet.ISpriteSheetContainer;
   import com.rovio.spritesheet.SpriteSheetBase;
   import com.rovio.Box2D.Common.b2Settings;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundManager;
   import com.angrybirds.data.level.theme.LevelThemeBackground;
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.angrybirds.engine.objects.LevelObjectBird;
   import com.angrybirds.engine.objects.LevelObjectPig;
   import com.rovio.events.FrameUpdateEvent;
   import com.angrybirds.engine.data.Replay;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.data.level.LevelCameraModel;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.background.LevelBackground;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.controllers.ILevelMainController;
   import starling.core.Starling;
   import com.angrybirds.AngryBirdsEngine;
   import each.Log;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelMain
   {
      
      private static const MAX_PARTICLE_COUNT:int = 20;
      
      public static const LEVEL_WIDTH_PIXEL:Number = AngryBirdsEngine.SCREEN_WIDTH;
      
      public static const LEVEL_HEIGHT_PIXEL:Number = AngryBirdsEngine.SCREEN_HEIGHT;
      
      public static const PIXEL_TO_B2_SCALE:Number = 1 / 20;
      
      public static const LEVEL_HEIGHT_B2:Number = AngryBirdsEngine.SCREEN_HEIGHT * PIXEL_TO_B2_SCALE;
      
      public static const LEVEL_WIDTH_B2:Number = LEVEL_WIDTH_PIXEL * PIXEL_TO_B2_SCALE;
      
      public static const DAMAGE_SCORE_MULTIPLIER:Integer = new Integer(13 - 3);
      
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
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var mPhysicsTimeOffsetMilliSeconds:Number;
      
      public var mLevelTimeMilliSeconds:Number;
      
      private var mRootSprite:LevelSprite;
      
      private var mGameSprite:Sprite;
      
      protected var mCurrentLevel:LevelModel;
      
      protected var mController:ILevelMainController = null;
      
      private var mEventDispatcher:EventDispatcher;
      
      private var mGraphicsInitListeners:Array;
      
      private var mStarling:Starling;
      
      private var mSpriteSheetContainer:ISpriteSheetContainer;
      
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
      
      protected var mScreenWidth:int = 0;
      
      protected var mScreenHeight:int = 0;
      
      protected var mScreenWidthScale:Number = 1.0;
      
      protected var mScreenHeightScale:Number = 1.0;
      
      protected var mAnimationsWaitingInitialization:Boolean;
      
      private var mLevelLogicClasses:HashMap;
      
      public function LevelMain(param1:Stage, param2:LevelItemManager, param3:LevelThemeBackgroundManager, param4:LevelManager)
      {
         this.mGraphicsInitListeners = [];
         super();
         this.mEventDispatcher = new EventDispatcher();
         this.mStage = param1;
         this.mLevelItemManager = param2;
         this.mLevelThemeManager = param3;
         this.mLevelManager = param4;
         this.mTextureManager = TextureManager.instance;
         this.mAnimationManager = this.initAnimationManager(this.mTextureManager);
         this.mThemeGraphicsManager = this.initThemeGraphicsManager();
         this.mThemeSoundsManager = this.initThemeSoundsManager();
         this.mCutSceneManager = this.initCutSceneManager();
         this.mLevelLogicClasses = new HashMap();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.mStarling = new Starling(LevelSprite,param1,new Rectangle(0,0,AngryBirdsEngine.SCREEN_WIDTH,AngryBirdsEngine.SCREEN_HEIGHT),_loc5_);
         AngryBirdsEngine.smApp.addEventListener(FrameUpdateEvent.UPDATE,this.mStarling.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated,false,0,true);
         this.mStarling.simulateMultitouch = false;
         this.mStarling.enableErrorChecking = false;
         this.mStarling.antiAliasing = 2;
         this.mStarling.createContext();
      }
      
      public static function getDistanceOfObjects(param1:LevelObjectBase, param2:LevelObjectBase) : Number
      {
         var _loc3_:Number = param1.worldX - param2.worldX;
         var _loc4_:Number = param1.worldY - param2.worldY;
         return getDistance(_loc3_,_loc4_);
      }
      
      public static function getDistance(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
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
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.mSlowMotionModifier = new GameSpeedModifier(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return LevelMain.DAMAGE_SCORE_MULTIPLIER.getValue();
      }
      
      public function clear() : void
      {
         if(this.mSpriteSheetContainer)
         {
            this.mSpriteSheetContainer.dispose();
         }
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
      
      protected function initAnimationManager(param1:TextureManager) : AnimationManager
      {
         return new AnimationManager(param1);
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(Starling.current)
         {
            if(param1)
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
      
      public function setGameVisible(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:ILevelMainController) : void
      {
         if(this.mController != null)
         {
            this.mController.removeEventListeners();
         }
         this.mController = param1;
         if(this.mReadyToRun)
         {
            this.mController.addEventListeners();
         }
      }
      
      public function getCurrentReplay() : Replay
      {
         return this.mCurrentReplay;
      }
      
      protected function getSpriteSheetGroup(param1:SpriteSheetBase) : int
      {
         return 0;
      }
      
      public function initializeGraphics(param1:ISpriteSheetContainer, param2:Function) : void
      {
         var _loc5_:SpriteSheetBase = null;
         var _loc6_:int = 0;
         this.mSpriteSheetContainer = param1;
         var _loc3_:int = this.mSpriteSheetContainer.spriteSheetCount;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.mSpriteSheetContainer.getSpriteSheet(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.mTextureManager.addTextures(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.mEventDispatcher.addEventListener(Event.INIT,param2);
            this.mGraphicsInitListeners.push(param2);
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
      
      private function onTexturesInitialized(param1:Event) : void
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
      
      private function onContextCreated(param1:Event) : void
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
         var _loc1_:Function = null;
         for each(_loc1_ in this.mGraphicsInitListeners)
         {
            this.mEventDispatcher.removeEventListener(Event.INIT,_loc1_);
         }
         this.mGraphicsInitListeners = [];
      }
      
      public function init(param1:LevelModel) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.mLevelBorders = new LevelBorders(this,param1);
         this.mLevelCamera = this.initializeLevelCamera(param1);
         this.mPhysicsTimeOffsetMilliSeconds = 0;
         this.mLevelTimeMilliSeconds = 0;
         this.mActivateSpecialPower = false;
         this.mReadyToRun = false;
         this.mCanNotRun = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         sCurrentTheme = param1.theme;
         this.mCurrentLevel = param1;
         this.mGraphicsAvailable = this.isThemeGraphicsAvailable(param1.theme);
         this.mSoundsAvailable = this.isThemeSoundsAvailable(param1.theme);
         if(this.mGraphicsAvailable && this.mSoundsAvailable)
         {
            this.initialize(param1);
         }
         else
         {
            this.loadTheme(param1.theme);
         }
         this.initReplay(param1.name);
         ScoreCollector.init();
      }
      
      protected function initReplay(param1:String) : void
      {
         this.mCurrentReplay = new Replay(param1);
      }
      
      protected function isThemeGraphicsAvailable(param1:String) : Boolean
      {
         if(this.mThemeGraphicsManager)
         {
            return false;
         }
         return true;
      }
      
      protected function isThemeSoundsAvailable(param1:String) : Boolean
      {
         var _loc2_:LevelThemeBackground = null;
         if(this.mThemeSoundsManager)
         {
            _loc2_ = this.mLevelThemeManager.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.ambientSoundName && !this.mThemeSoundsManager.isContentFileAvailable(_loc2_.ambientSoundName))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         return null;
      }
      
      protected function loadTheme(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:LevelThemeBackground = null;
         if(this.mThemeGraphicsManager && !this.isThemeGraphicsAvailable(param1))
         {
            this.mThemeGraphicsManager.removeEventListener(Event.COMPLETE,this.onThemeGraphicsAvailable);
            this.mThemeGraphicsManager.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            this.mThemeGraphicsManager.addEventListener(Event.COMPLETE,this.onThemeGraphicsAvailable);
            this.mThemeGraphicsManager.addEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.mThemeGraphicsManager.loadContent(param1,_loc2_);
         }
         if(this.mThemeSoundsManager && !this.isThemeSoundsAvailable(param1))
         {
            this.mThemeSoundsManager.removeEventListener(Event.COMPLETE,this.onThemeSoundsAvailable);
            this.mThemeSoundsManager.removeEventListener(Event.CANCEL,this.onThemeSoundsNotAvailable);
            this.mThemeSoundsManager.addEventListener(Event.COMPLETE,this.onThemeSoundsAvailable);
            this.mThemeSoundsManager.addEventListener(Event.CANCEL,this.onThemeSoundsNotAvailable);
            _loc3_ = this.mLevelThemeManager.getBackground(param1);
            if(_loc3_)
            {
               this.mThemeSoundsManager.loadContent(_loc3_.ambientSoundName);
            }
         }
      }
      
      private function onThemeGraphicsAvailable(param1:Event) : void
      {
         this.mThemeGraphicsManager.removeEventListener(Event.COMPLETE,this.onThemeGraphicsAvailable);
         this.mThemeGraphicsManager.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.mGraphicsAvailable = true;
         if(this.mGraphicsAvailable && this.mSoundsAvailable)
         {
            this.initialize(this.mCurrentLevel);
         }
      }
      
      private function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         this.mThemeGraphicsManager.removeEventListener(Event.COMPLETE,this.onThemeGraphicsAvailable);
         this.mThemeGraphicsManager.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.mCanNotRun = true;
      }
      
      private function onThemeSoundsAvailable(param1:Event) : void
      {
         this.mThemeGraphicsManager.removeEventListener(Event.COMPLETE,this.onThemeSoundsAvailable);
         this.mThemeGraphicsManager.removeEventListener(Event.CANCEL,this.onThemeSoundsNotAvailable);
         this.mSoundsAvailable = true;
         if(this.mGraphicsAvailable && this.mSoundsAvailable)
         {
            this.initialize(this.mCurrentLevel);
         }
      }
      
      private function onThemeSoundsNotAvailable(param1:Event) : void
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
      
      protected function initializePhysicsConstants(param1:LevelModel) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.LINEAR_SLEEP_TOLERANCE_DEFAULT;
      }
      
      private function initialize(param1:LevelModel) : void
      {
         this.mSlowMotionModifier = null;
         this.mMEInUse = false;
         if(Starling.juggler)
         {
            Starling.juggler.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.mLevelBackground = this.initializeLevelBackground(param1.theme,0 / PIXEL_TO_B2_SCALE,this.backgroundTextureManager,this.mLevelCamera.getMinimumScale());
         this.mLevelBackground.setParticlesEnabled(AngryBirdsEngine.getParticlesEnabled());
         if(Starling.current)
         {
            Starling.current.color = this.mLevelBackground.skyColor;
         }
         this.mLevelObjects = this.initializeLevelObjectManager(param1);
         this.mLevelObjects.levelLogic = this.initializeLevelLogic(param1.name);
         this.mLevelSlingshot = this.initializeLevelSlingshot(param1);
         this.mLevelParticles = this.initializeParticleManager(this.mAnimationManager,this.mTextureManager);
         this.mLevelCamera.init();
         this.addItemsToDisplayList();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.mController)
         {
            this.mController.addEventListeners();
         }
         if(param1.name == sPreviousLevel)
         {
            this.mLevelCamera.snapManualScale(sPreviousScale);
            this.updateLevelGraphics(0);
         }
         else
         {
            sPreviousLevel = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.mLevelObjects.levelInitialized();
      }
      
      protected function initLevelEngine(param1:LevelModel) : void
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
      
      public function initializeReplay(param1:String) : void
      {
         this.mReplayData = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.mPreviousReplay != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.mPreviousReplay)
         {
            if(param1)
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
      
      protected function initializeLevelObjectManager(param1:LevelModel) : LevelObjectManager
      {
         var _loc2_:String = LevelThemeBackground.GROUND_TYPE;
         return new LevelObjectManager(this,param1,new Sprite(),_loc2_);
      }
      
      protected function initializeLevelLogic(param1:String) : ILevelLogic
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.mLevelLogicClasses[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as ILevelLogic;
      }
      
      public function registerCustomLevelLogic(param1:String, param2:Class) : void
      {
         this.mLevelLogicClasses[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:LevelModel) : LevelCamera
      {
         return new LevelCamera(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number) : LevelBackground
      {
         var _loc5_:LevelThemeBackground;
         if((_loc5_ = this.mLevelThemeManager.getBackground(param1)) == null)
         {
            Log.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = LevelModel.DEFAULT_THEME;
            _loc5_ = this.mLevelThemeManager.getBackground(param1);
         }
         return new LevelBackground(_loc5_,param2,param3,param4,!Starling.isSoftware);
      }
      
      protected function initializeLevelSlingshot(param1:LevelModel) : LevelSlingshot
      {
         return new LevelSlingshot(this,param1,new Sprite());
      }
      
      protected function initializeParticleManager(param1:AnimationManager, param2:TextureManager) : LevelParticleManager
      {
         return new LevelParticleManager(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:LevelModel = new LevelModel();
         _loc3_.slingshotY = -12;
         var _loc4_:LevelCameraModel;
         (_loc4_ = new LevelCameraModel()).left = 0;
         _loc4_.top = -LevelCamera.SCREEN_HEIGHT_B2 / 10 * 8;
         _loc4_.bottom = _loc4_.top + LevelCamera.SCREEN_HEIGHT_B2;
         _loc4_.right = _loc4_.left + LevelCamera.SCREEN_WIDTH_B2;
         _loc4_.y = -13.929;
         _loc4_.x = LevelCamera.SCREEN_WIDTH_B2;
         _loc4_.id = LevelCamera.CAMERA_ID_SLINGSHOT;
         _loc3_.addCamera(_loc4_);
         var _loc5_:LevelCameraModel;
         (_loc5_ = new LevelCameraModel()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + LevelCamera.SCREEN_WIDTH_B2;
         _loc5_.bottom = _loc5_.top + LevelCamera.SCREEN_HEIGHT_B2;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + LevelCamera.SCREEN_WIDTH_B2 / 2;
         _loc5_.id = LevelCamera.CAMERA_ID_CASTLE;
         _loc3_.addCamera(_loc5_);
         this.postProcessEmptyEnvironment(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(sCurrentTheme != null)
         {
            _loc3_.theme = sCurrentTheme;
         }
         this.init(_loc3_);
      }
      
      protected function postProcessEmptyEnvironment(param1:LevelModel, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
      }
      
      protected function XORandom() : Number
      {
         this.mXORvalue ^= this.mXORvalue << 21;
         this.mXORvalue ^= this.mXORvalue >>> 35;
         this.mXORvalue ^= this.mXORvalue << 4;
         return this.mXORvalue * (1 / uint.MAX_VALUE);
      }
      
      protected function addFallingBirds(param1:LevelModel) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:LevelObjectModel = null;
         this.mXORvalue = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.XORandom() * 5;
               (_loc6_ = new LevelObjectModel()).x = 30 + _loc4_ * 10 + this.XORandom() * 9;
               if(_loc3_ == 0)
               {
                  _loc6_.y = 0;
                  if(_loc4_ == 1 || _loc4_ == 2 || _loc4_ == 4)
                  {
                     _loc6_.type = "PIG_MUSTACHE";
                  }
                  else
                  {
                     _loc6_.type = "PIG_HELMET";
                  }
                  _loc6_.angle = 45 - this.XORandom() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.XORandom() * 3 - _loc4_ * 8;
                  if((_loc5_ = (_loc4_ * _loc4_ + _loc3_ * _loc4_ + _loc3_) % 5) < 2)
                  {
                     _loc6_.type = "BIRD_RED";
                  }
                  else if(_loc5_ == 3)
                  {
                     _loc6_.type = "BIRD_YELLOW";
                  }
                  else
                  {
                     _loc6_.type = "BIRD_BLUE";
                  }
                  _loc6_.angle = this.XORandom() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
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
         this.addItemToDisplayList(this.mLevelParticles.getGroupSprite(LevelParticleManager.PARTICLE_GROUP_TRAILS_OLD));
         this.addItemToDisplayList(this.mLevelParticles.getGroupSprite(LevelParticleManager.PARTICLE_GROUP_TRAILS));
      }
      
      protected function addGameSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.mLevelParticles.getGroupSprite(LevelParticleManager.PARTICLE_GROUP_BACKGROUND_EFFECTS));
         this.addItemToDisplayList(this.mLevelObjects.mainSprite);
         this.addItemToDisplayList(this.mLevelSlingshot.sprite);
         this.addItemToDisplayList(this.mLevelParticles.getGroupSprite(LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS));
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
         if(!LevelEngineBox2D.USE_DEBUG_SPRITE)
         {
         }
      }
      
      protected function addItemToDisplayList(param1:DisplayObject) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         if(AngryBirdsEngine.sWidthScale > AngryBirdsEngine.sHeightScale)
         {
            param1 /= AngryBirdsEngine.sWidthScale;
            param2 /= AngryBirdsEngine.sWidthScale;
         }
         else
         {
            param1 /= AngryBirdsEngine.sHeightScale;
            param2 /= AngryBirdsEngine.sHeightScale;
         }
         param3.x = ((param1 - this.sprite.x) / LevelCamera.levelScale + this.mLevelCamera.screenLeftScroll) * PIXEL_TO_B2_SCALE;
         param3.y = ((param2 - this.sprite.y) / LevelCamera.levelScale + this.mLevelCamera.screenTopScroll) * PIXEL_TO_B2_SCALE;
         return param3;
      }
      
      public function box2DToScreen(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / PIXEL_TO_B2_SCALE - this.mLevelCamera.screenLeftScroll) * LevelCamera.levelScale + this.sprite.x;
         param3.y = (param2 / PIXEL_TO_B2_SCALE - this.mLevelCamera.screenTopScroll) * LevelCamera.levelScale + this.sprite.y;
         var _loc4_:Number = Math.max(AngryBirdsEngine.sWidthScale,AngryBirdsEngine.sHeightScale);
         param3.x *= _loc4_;
         param3.y *= _loc4_;
         return param3;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number) : void
      {
         this.sprite.scaleX = param3;
         this.sprite.scaleY = param3;
         if(this.background)
         {
            this.background.setScreenOffset(param1,param2,this.mScreenWidth,this.mScreenHeight,param3,this.mScreenWidthScale,this.mScreenHeightScale);
         }
         if(this.objects)
         {
            this.objects.updateScrollAndScale(param1,param2);
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.updateScrollAndScale(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.updateScrollAndScale(param1,param2);
         }
         if(this.particles)
         {
            this.particles.updateScrollAndScale(param1,param2);
         }
      }
      
      public function createObjectFromMaterial(param1:String, param2:Number, param3:Number) : void
      {
         this.mLevelObjects.addObject(param1,param2,param3,0,LevelObjectManager.ID_NEXT_FREE);
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
      
      public function setCameraShaking(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.mCameraShaker = new LevelCameraShaker(param2,param3,param4);
         }
         else
         {
            this.mCameraShaker = null;
         }
      }
      
      public function clearLevel() : void
      {
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
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
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
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !Starling.contextAvailable())
         {
            return 0;
         }
         if(this.mPreviousReplay && this.mPreviousReplay.isPlaying)
         {
            return this.updateWithReplay(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.mSlowMotionModifier)
         {
            _loc4_ = this.mSlowMotionModifier.update(param1);
            param1 *= this.mSlowMotionModifier.speed;
            if(Starling.juggler)
            {
               Starling.juggler.speed = this.mSlowMotionModifier.speed;
            }
            if(!_loc4_)
            {
               this.mSlowMotionModifier = null;
            }
         }
         this.mLevelTimeMilliSeconds += param1;
         this.mPhysicsTimeOffsetMilliSeconds += param1;
         this.mPhysicsTimeOffsetMilliSeconds = this.mLevelEngine.updateWorld(this.mPhysicsTimeOffsetMilliSeconds);
         this.mLevelSlingshot.update(param1,param3);
         if(param2)
         {
            this.updateLevelGraphics(param1);
         }
         return param1;
      }
      
      private function updateWithReplay(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = LevelEngineBox2D.UPDATE_TIME_STEP_MILLISECONDS;
         if(this.mPreviousReplay)
         {
            param1 *= this.mPreviousReplay.speed;
            _loc4_ = this.mLevelTimeMilliSeconds + param1;
            while(this.mLevelTimeMilliSeconds + _loc3_ < _loc4_)
            {
               if(this.mLevelTimeMilliSeconds + _loc3_ > this.mReplayUpdateTimeMilliSeconds)
               {
                  this.mPreviousReplay.step(this);
                  this.mReplayUpdateTimeMilliSeconds += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.mReplayUpdateTimeMilliSeconds + _loc3_)
            {
               this.mPreviousReplay.step(this);
               this.mReplayUpdateTimeMilliSeconds += _loc3_;
            }
            if(this.mLevelTimeMilliSeconds < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.mLevelTimeMilliSeconds,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function updateLevelGraphics(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.mLevelBackground.update(param1);
         this.mLevelObjects.renderObjects(param1,this.mLevelEngine.timeStepForLastUpdateMilliSeconds,this.mPhysicsTimeOffsetMilliSeconds);
         this.updateTrailingObjects();
         if(this.mShadingCounter < Tuner.MIGHTY_EAGLE_SHADING_DURATION)
         {
            this.mShadingCounter += param1;
            _loc2_ = Tuner.MIGHTY_EAGLE_SHADING_DURATION / 2;
            _loc3_ = (-Math.abs(this.mShadingCounter - _loc2_) + _loc2_) * (Tuner.MIGHTY_EAGLE_MAX_SHADING_INTENSITY / _loc2_);
            if(this.shade)
            {
               this.shade.alpha = _loc3_;
            }
         }
         else if(this.shade)
         {
            this.shade.visible = false;
         }
         if(this.mCameraShaker)
         {
            if(!this.mCameraShaker.shake(this.mLevelCamera,param1))
            {
               this.setCameraShaking(false);
            }
         }
         this.mLevelCamera.updateCamera(param1);
         this.mLevelEngine.drawDebugData();
         this.mLevelParticles.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.handleSpecialPowerActivation();
      }
      
      protected function updateTrailingObjects() : void
      {
         var _loc1_:LevelObject = null;
         if(this.mTrailingObjects != null)
         {
            for each(_loc1_ in this.mTrailingObjects)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.removeTrailingObject(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:LevelObjectPig = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.mLevelObjects.getRandomPig(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.mLevelObjects.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.mLevelObjects.getRandomPig(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.mLevelObjects.getPigCount());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC;
         }
         ScoreCollector.addScore(param1,param2);
         this.mController.addScore(param1);
         if(param3 && param1 > 0 && !this.mMEInUse)
         {
            this.addFloatingText(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function addFloatingText(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE;
         }
         this.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_FLOATING_TEXT,LevelParticleManager.PARTICLE_GROUP_FLOATING_TEXT,LevelParticle.PARTICLE_TYPE_FLOATING_TEXT,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function addTrailingObject(param1:LevelObjectBase) : void
      {
         if(this.mTrailingObjects == null)
         {
            this.mTrailingObjects = new Array();
         }
         this.mTrailingObjects.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.mLevelSlingshot.useMightyEagle();
         this.mLevelObjects.resetBirds();
         this.mMEInUse = true;
      }
      
      public function removeTrailingObject(param1:LevelObject) : void
      {
         this.mLevelParticles.clearGroup(LevelParticleManager.PARTICLE_GROUP_TRAILS_OLD);
         if(this.mTrailingObjects.indexOf(param1) >= 0)
         {
            this.mTrailingObjects.splice(this.mTrailingObjects.indexOf(param1),1);
         }
         if(this.mTrailingObjects.length == 0)
         {
            this.mTrailingObjects = null;
         }
      }
      
      public function shootBird(param1:LevelSlingshotObject, param2:Number, param3:Number) : LevelObjectBird
      {
         var _loc4_:LevelObjectBird = LevelObjectBird(this.mLevelObjects.addObject(param1.name,param1.x,param1.y,0,LevelObjectManager.ID_NEXT_FREE,true,true,true,param1.scale));
         var _loc5_:Number = param1.launchSpeed;
         if(param1.powerUpDamageMultiplier > 1)
         {
            _loc4_.setPowerUpDamageMultiplier(param1.powerUpDamageMultiplier);
         }
         if(param1.powerUpSpeed != 0)
         {
            _loc5_ = param1.powerUpSpeed;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.setLinearVelocity(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(LevelCamera.ACTION_FOLLOW_BIRD);
         if(this.mCurrentReplay)
         {
            this.mCurrentReplay.shootBird(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.mActivateSpecialPower = true;
         this.mSpecialPowerTargetX = param1;
         this.mSpecialPowerTargetY = param2;
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
      
      public function cheatKillAllThePigs() : void
      {
         this.mLevelObjects.cheatKillAllThePigs();
      }
      
      public function cheatKillAllTheDynamites() : void
      {
         this.mLevelObjects.cheatKillDynamites();
      }
      
      public function getCurrentLevelData() : LevelModel
      {
         var _loc1_:LevelModel = new LevelModel();
         _loc1_.scoreGold = this.mCurrentLevel.scoreGold;
         _loc1_.scoreSilver = this.mCurrentLevel.scoreSilver;
         this.mLevelCamera.writeCameraInformation(_loc1_);
         this.mLevelObjects.writeObjectInformation(_loc1_);
         this.mLevelSlingshot.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.mLevelBackground.getCurrentThemeName();
         return _loc1_;
      }
      
      public function getScoreSilver() : int
      {
         return this.mCurrentLevel.scoreSilver;
      }
      
      public function getScoreGold() : int
      {
         return this.mCurrentLevel.scoreGold;
      }
      
      public function setScoreSilver(param1:int) : void
      {
         this.mCurrentLevel.scoreSilver = param1;
      }
      
      public function setScoreGold(param1:int) : void
      {
         this.mCurrentLevel.scoreGold = param1;
      }
      
      public function screenSizeChanged(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.mScreenWidth = param1;
         this.mScreenHeight = param2;
         this.mScreenWidthScale = param3;
         this.mScreenHeightScale = param4;
         if(this.mRootSprite)
         {
            this.mRootSprite.updateSize(param1,param2);
         }
         if(this.mLevelCamera)
         {
            this.mLevelCamera.updateCamera(0);
         }
      }
      
      public function isCollisionExcluded(param1:LevelObjectBase, param2:LevelObjectBase) : Boolean
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
   }
}
