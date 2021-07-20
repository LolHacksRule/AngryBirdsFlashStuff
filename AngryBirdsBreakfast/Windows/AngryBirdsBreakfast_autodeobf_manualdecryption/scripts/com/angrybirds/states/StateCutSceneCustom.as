package com.angrybirds.states
{
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.graphics.cutscenes.CutSceneManager;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class StateCutSceneCustom extends StateCutScene
   {
       
      
      private var mSwfCutscene:Loader;
      
      public function StateCutSceneCustom(param1:LevelManager, param2:LocalizationManager, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView.movieClip.cacheAsBitmap = true;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         AngryBirdsBase.singleton.popupManager.closeAllPopups();
      }
      
      override protected function startCutScene() : void
      {
         var _loc3_:LoaderContext = null;
         mUIView.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:ByteArray = CutSceneManager.getSwfCutscene(_loc1_);
         if(_loc2_)
         {
            this.mSwfCutscene = new Loader();
            _loc3_ = new LoaderContext(false,new ApplicationDomain());
            _loc3_.allowCodeImport = true;
            this.mSwfCutscene.loadBytes(_loc2_,_loc3_);
            mUIView.getItemByName("Container_Cutscene").mClip.addChild(this.mSwfCutscene);
            if(_loc1_.search("intro") != -1)
            {
               SoundEngine.playSound("birds_intro");
            }
            else if(_loc1_.search("outro") != -1)
            {
               SoundEngine.playSound("birds_outro");
            }
         }
         else
         {
            onCutSceneNotAvailable(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:EpisodeModel = null;
         var _loc3_:* = null;
         if(mLevelManager.previousLevel)
         {
            _loc2_ = mLevelManager.getEpisodeForLevel(mLevelManager.previousLevel);
            _loc3_ = mLevelManager.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = mLevelManager.getEpisodeForLevel(mLevelManager.currentLevel);
            _loc3_ = mLevelManager.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         mCutSceneManager.loadContent(param1);
      }
      
      override public function deActivate() : void
      {
         if(this.mSwfCutscene)
         {
            mUIView.getItemByName("Container_Cutscene").mClip.removeChild(this.mSwfCutscene);
            this.mSwfCutscene.unloadAndStop();
            this.mSwfCutscene = null;
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "SKIP":
               SoundEngine.stopSounds();
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
