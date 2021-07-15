package com.angrybirds.states
{
   import com.angrybirds.user.UserManager;
   import com.rovio.utils.DynamicLanguage;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.popups.PopupLevelEnd;
   import com.angrybirds.AngryBirdsEngine;
   
   public class StateLevelEndCustom extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
       
      
      private var mPopup:PopupLevelEnd;
      
      public function StateLevelEndCustom(param1:LevelManager, param2:Boolean, param3:String, param4:LocalizationManager, param5:LevelItemManager)
      {
         super(param1,param2,param3,param4);
         this.mPopup = new PopupLevelEnd(this,param5);
      }
      
      protected function getViewXML() : XML
      {
         return ViewXMLLibrary.mLibrary.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(this.getViewXML());
         mUIView.movieClip.cacheAsBitmap = true;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         AngryBirdsBase.singleton.popupManager.closeAllPopups();
         AngryBirdsBase.singleton.popupManager.openPopup(this.mPopup);
         DynamicLanguage.instance.updateTextFields(mUIView.container,"StateEnd");
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.mPopup.isOpen)
         {
            this.mPopup.update(param1);
         }
         if(nextState.length > 0)
         {
            AngryBirdsEngine.mIsRunning.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function getStateLevelLoadState() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return StateLevelSelectionCustom.STATE_NAME;
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
         var _loc1_:String = this.levelManager.getNextLevelId();
         var _loc2_:String = !!_loc1_ ? mLevelManager.getValidLevelId(this.levelManager.getNextLevelId()) : null;
         if(!_loc1_ || UserManager.isLevelUnlocked(_loc2_))
         {
            mLevelManager.loadLevel(_loc2_);
            setNextState(StateCutScene.STATE_NAME);
         }
         else
         {
            setNextState(StateLevelSelection.STATE_NAME);
         }
      }
   }
}
