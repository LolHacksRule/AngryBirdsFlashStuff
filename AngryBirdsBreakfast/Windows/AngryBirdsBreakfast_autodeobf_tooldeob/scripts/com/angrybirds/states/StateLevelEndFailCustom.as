package com.angrybirds.states
{
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.popups.PopupLevelEndFail;
   import com.angrybirds.AngryBirdsEngine;
   
   public class StateLevelEndFailCustom extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var mPopup:PopupLevelEndFail;
      
      public function StateLevelEndFailCustom(param1:LevelManager, param2:Boolean, param3:String, param4:LocalizationManager)
      {
         super(param1,param2,param3,param4);
         this.mPopup = new PopupLevelEndFail(this);
      }
      
      override protected function init() : void
      {
         mUIView = new UIView(this);
         mUIView.init(this.getViewXML());
         mUIView.movieClip.cacheAsBitmap = true;
      }
      
      protected function getViewXML() : XML
      {
         return ViewXMLLibrary.mLibrary.Views.ViewLevelEndFailCustom[0];
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         AngryBirdsBase.singleton.popupManager.closeAllPopups();
         AngryBirdsBase.singleton.popupManager.openPopup(this.mPopup,false,false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            AngryBirdsEngine.smLevelMain.clearLevel();
         }
         this.mPopup.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function getLevelLoadState() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      public function getLevelSelectionState() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
      
      public function setState(param1:String) : void
      {
         setNextState(param1);
      }
      
      public function get levelManager() : LevelManager
      {
         return mLevelManager;
      }
      
      public function proceedToNextLevel() : void
      {
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(this.levelManager.getNextLevelId()));
         setNextState(StateLevelLoadClassic.STATE_NAME);
      }
   }
}
