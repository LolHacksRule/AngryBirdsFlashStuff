package
{
   import com.angrybirds.user.CustomUserProgress;
   import com.angrybirds.user.LoginHandler;
   import com.angrybirds.user.UserModelCustom;
   import com.angrybirds.user.UserManager;
   import com.rovio.utils.DynamicLanguage;
   import com.rovio.utils.GoogleAnalyticsTracker;
   import com.rovio.utils.GoogleAnalyticsTrackerCustom;
   import com.rovio.utils.XMLUtils;
   import com.angrybirds.data.PackageManager;
   import com.angrybirds.data.PackageManagerCustom;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.item.LevelItemManagerCustom;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupLayerIndex;
   import com.angrybirds.data.level.LevelManagerCustom;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.angrybirds.states.StateLevelLoadCreditsCustom;
   import com.angrybirds.states.StateLegal;
   import com.angrybirds.states.StateLoadCustom;
   import com.angrybirds.states.StateLevelLoadCustom;
   import com.angrybirds.states.StatePlayCustom;
   import com.angrybirds.states.StateLevelEndCustom;
   import com.angrybirds.states.StateCreditsCustom;
   import com.angrybirds.states.StateLevelEndFailCustom;
   import com.angrybirds.states.StateCutSceneCustom;
   import com.angrybirds.states.StateLanguageSelection;
   import com.angrybirds.states.StateLevelSelectionCustom;
   import com.angrybirds.popup.tutorial.CustomTutorialLinkageSolver;
   import com.angrybirds.popup.tutorial.TutorialPopupManagerCustom;
   import com.rovio.ApplicationCanvas;
   import com.rovio.states.StateLoad;
   import com.angrybirds.engine.LevelMainCustom;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.popups.PopupManagerCustom;
   import com.angrybirds.utils.UncaughtErrorHandlerCustom;
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.fonts.AngryBirdsArialMSFont;
   import com.rovio.assets.AssetCache;
   import com.rovio.assets.LoadingScreenBlack;
   import com.rovio.factory.XMLFactory;
   import flash.desktop.NativeApplication;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.KeyboardEvent;
   import flash.text.Font;
   import flash.ui.Keyboard;
   import flash.utils.getTimer;
   
   public class AngryBirdsCustom extends AngryBirdsBase
   {
      
      protected static var mBlackAssetMapBin:Class = AngryBirdsCustom_mBlackAssetMapBin;
      
      protected static var mViewLibraryCustomBin:Class = AngryBirdsCustom_mViewLibraryCustomBin;
      
      private static var mCustomItemDataTableBin:Class = AngryBirdsCustom_mCustomItemDataTableBin;
      
      protected static var mLevelBackgroundsTableBin:Class = AngryBirdsCustom_mLevelBackgroundsTableBin;
      
      private static var mLanguageDataTableBin:Class = AngryBirdsCustom_mLanguageDataTableBin;
      
      public static const NESTLE_VERSION:String = "(r500)";
      
      public static const GAME_AREA_WIDTH:int = 760;
      
      public static const SIDEBAR_WIDTH:int = 0;
      
      public static const SCREEN_HEIGHT:int = 570;
      
      public static var LOCAL_STORAGE_NAME:String = "ABNestle";
      
      public static var SERVICE_URL_NAME:String = "http://head.angrybirds-nestle.appspot.com/";
      
      public static var SERVICE_URL:String = "../";
      
      public static const IS_RELEASE_BUILD:Boolean = true;
       
      
      private var mUncaughtErrorsHandler:UncaughtErrorHandlerCustom;
      
      private var mSoundsEnabled:Boolean = true;
      
      private var mLoginManager:LoginHandler;
      
      private var mPlayButtonPressed:Boolean;
      
      public function AngryBirdsCustom(param1:ApplicationCanvas, param2:String, param3:String)
      {
         if(param2 == null)
         {
            SERVICE_URL = SERVICE_URL_NAME;
         }
         var _loc4_:XML;
         var _loc5_:Namespace = (_loc4_ = NativeApplication.nativeApplication.applicationDescriptor).namespace();
         LOCAL_STORAGE_NAME = _loc4_._loc5_::id;
         GoogleAnalyticsTracker.enabled = false;
         GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTracker.ACTION_FLASH_INITIALIZED);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.mPlayButtonPressed = false;
      }
      
      public static function changeXMLWitdh(param1:XML) : XML
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.@width)
            {
               _loc2_.@width = GAME_AREA_WIDTH;
            }
         }
         return param1;
      }
      
      public static function playThemeMusic() : void
      {
         if(SoundEngine.getChannelController("Channel_Theme") == null || !SoundEngine.getChannelController("Channel_Theme").isPlaying())
         {
            SoundEngine.playSound("ThemeMusic","Channel_Theme",100,0.65);
         }
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.S:
               this.setSoundsEnabled(!this.mSoundsEnabled);
               (AngryBirdsBase.singleton as AngryBirdsCustom).mActiveState.updateMuteButtonState();
         }
      }
      
      public function get soundsEnabled() : Boolean
      {
         return this.mSoundsEnabled;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
      }
      
      override protected function initStateLoad() : StateLoad
      {
         return new StateLoadCustom(localizationManager,true,StateLoad.STATE_NAME,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         DynamicLanguage.THROW_ERROR_AT_OVERFLOW = false;
         DynamicLanguage.instance.setSourceXML(XMLFactory.fromOctetStreamClass(mLanguageDataTableBin));
         DynamicLanguage.instance.setLanguage(DynamicLanguage.DEFAULT_LANG);
         addState(new StateCutSceneCustom(mLevelManager,localizationManager,false));
         addState(new StateLanguageSelection(mLevelManager,localizationManager,mLevelItemManager,false));
         addState(new StateLegal(mLevelManager,localizationManager,false));
         addState(new StateLevelSelectionCustom(mLevelManager,localizationManager,mLevelItemManager,false));
         addState(new StateLevelLoadCustom(mLevelManager,localizationManager,mLevelItemManager,false));
         addState(new StateLevelLoadCreditsCustom(mLevelManager,localizationManager,mLevelItemManager,false));
         addState(new StatePlayCustom(mLevelManager,localizationManager,false,mLevelItemManager));
         addState(new StateLevelEndCustom(mLevelManager,false,StateLevelEndCustom.STATE_NAME,localizationManager,mLevelItemManager));
         addState(new StateLevelEndFailCustom(mLevelManager,false,StateLevelEndFailCustom.STATE_NAME,localizationManager));
         addState(new StateCreditsCustom(mLevelManager,localizationManager,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            onStageResize(null);
         }
      }
      
      override protected function setupPopupManager() : void
      {
         mPopupContainer = new MovieClip();
         mCanvas.stage.addChild(mPopupContainer);
         mPopupManager = new PopupManagerCustom(mPopupContainer,localizationManager,this,GAME_AREA_WIDTH,SCREEN_HEIGHT);
         mPopupManager.addEventListener(PopupEvent.OPEN,onEnginePauseRequest);
         mPopupManager.addEventListener(PopupEvent.CLOSE,onEngineResumeRequest);
         mDataModel.userProgress = new CustomUserProgress("",mLevelManager);
         (mDataModel.userProgress as CustomUserProgress).loadLocalProgressData();
         mTutorialPopupManager = new TutorialPopupManagerCustom(mPopupManager,mDataModel,PopupLayerIndex.LAYER_INDEX_SCREEN,new CustomTutorialLinkageSolver());
      }
      
      override protected function initializeUserProgress() : void
      {
         this.initializeCustomUserProgress();
      }
      
      private function initializeLoginManager() : void
      {
         this.mLoginManager = new LoginHandler();
      }
      
      public function initializeCustomUserProgress() : void
      {
         UserManager.user = new UserModelCustom();
      }
      
      override protected function initializeLevelItemManager() : LevelItemManager
      {
         return new LevelItemManagerCustom();
      }
      
      override protected function initializeLevelThemeManager() : LevelThemeBackgroundManager
      {
         return super.initializeLevelThemeManager();
      }
      
      override protected function initializeLevelMain() : LevelMain
      {
         return new LevelMainCustom(stage,mLevelItemManager,mLevelThemeManager,mLevelManager);
      }
      
      override protected function initializePackageManager() : PackageManager
      {
         return new PackageManagerCustom(mLevelManager,this.levelItemsManagerCustom);
      }
      
      protected function get packageManagerCustom() : PackageManagerCustom
      {
         return mPackageManager as PackageManagerCustom;
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         AngryBirdsEngine.setEngineViewArea(0,0,param1,param2);
         setViewSize(param1,param2);
         mPopupManager.setViewSize(param1,param2);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         var _loc1_:int = Math.round(getTimer() / 1000);
         GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTracker.ACTION_FLASH_LOADED,_loc1_.toString(),_loc1_);
      }
      
      override public function setFirstGameState() : void
      {
         if(AssetCache.assetInCache("ViewLanguageSelection"))
         {
            super.setFirstGameState();
            setNextState(StateLanguageSelection.STATE_NAME);
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return XMLFactory.fromOctetStreamClass(mBlackAssetMapBin);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = XMLFactory.fromOctetStreamClass(mViewLibraryCustomBin);
         XMLUtils.copyNodesBetweenTrees(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get levelItemsManagerCustom() : LevelItemManagerCustom
      {
         return mLevelItemManager as LevelItemManagerCustom;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + NESTLE_VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + SERVER_VERSION;
      }
      
      override protected function initFonts() : void
      {
         super.initFonts();
         Font.registerFont(AngryBirdsArialMSFont);
      }
      
      override protected function loadItems() : void
      {
         var _loc1_:XML = this.mergeItemData(XMLFactory.fromOctetStreamClass(mCustomItemDataTableBin),XMLFactory.fromOctetStreamClass(mItemDataTableBin));
         mLevelItemManager.loadItems(_loc1_);
      }
      
      private function mergeItemData(param1:XML, param2:XML) : XML
      {
         var _loc3_:XML = new XML(param1.Items.toXMLString());
         var _loc4_:XML = new XML(param1.Item_Materials.toXMLString());
         var _loc5_:XML = new XML(param1.Item_Shapes.toXMLString());
         var _loc6_:XML = new XML(param1.Item_Resources_Sounds.toXMLString());
         var _loc7_:XML = new XML(param1.SoundChannels.toXMLString());
         var _loc8_:XML = new XML(param1.Material_Damage_Multipliers.toXMLString());
         var _loc9_:XML = new XML(param1.Material_Velocity_Multipliers.toXMLString());
         param2.appendChild(_loc3_);
         param2.appendChild(_loc4_);
         param2.appendChild(_loc5_);
         param2.appendChild(_loc6_);
         param2.appendChild(_loc7_);
         param2.appendChild(_loc8_);
         param2.appendChild(_loc9_);
         return param2;
      }
      
      override protected function getLevelBackgroundXML() : XML
      {
         return XMLFactory.fromOctetStreamClass(mLevelBackgroundsTableBin);
      }
      
      public function get levelManager() : LevelManager
      {
         return mLevelManager;
      }
      
      override protected function initializeLevelManager() : LevelManager
      {
         return new LevelManagerCustom();
      }
      
      public function get userProgressCustom() : CustomUserProgress
      {
         if(mDataModel && mDataModel.userProgress)
         {
            return mDataModel.userProgress as CustomUserProgress;
         }
         return null;
      }
      
      public function set userProgressCustom(param1:CustomUserProgress) : void
      {
         mDataModel.userProgress = param1;
      }
      
      public function get loginManager() : LoginHandler
      {
         return this.mLoginManager;
      }
      
      public function setSoundsEnabled(param1:Boolean) : void
      {
         SoundEngine.setSounds(param1);
         this.mSoundsEnabled = param1;
      }
      
      public function toggleSoundsEnabled() : void
      {
         this.mSoundsEnabled = !this.mSoundsEnabled;
         SoundEngine.setSounds(this.mSoundsEnabled);
         (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.setSoundsEnabled(this.mSoundsEnabled);
      }
      
      public function setPlayButtonPressed(param1:Boolean) : void
      {
         this.mPlayButtonPressed = param1;
      }
      
      public function hasPlayButtonBeenPressed() : Boolean
      {
         return this.mPlayButtonPressed;
      }
      
      public function quitGame() : void
      {
         NativeApplication.nativeApplication.exit();
      }
      
      public function switchFullscreen() : void
      {
         (mCanvas as AngryBirdsCustomCanvas).onDisplayStateChange();
      }
      
      public function isFullScreen() : Boolean
      {
         if(stage.displayState == StageDisplayState.NORMAL)
         {
            return false;
         }
         return true;
      }
   }
}
