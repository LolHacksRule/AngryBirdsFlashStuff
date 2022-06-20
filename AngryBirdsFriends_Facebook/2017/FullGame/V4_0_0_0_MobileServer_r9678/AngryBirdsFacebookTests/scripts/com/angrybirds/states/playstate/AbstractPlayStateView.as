package com.angrybirds.states.playstate
{
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.StateLevelLoadClassic;
   import com.angrybirds.states.StateLevelSelection;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.Components.UIContainerRovio;
   import flash.events.EventDispatcher;
   
   public class AbstractPlayStateView extends EventDispatcher implements IPlayStateView
   {
       
      
      protected var mViewContainer:UIContainerRovio;
      
      protected var mIsDisabled:Boolean;
      
      protected var mDataModel:DataModel;
      
      protected var mLocalizationManager:LocalizationManager;
      
      protected var mLevelManager:LevelManager;
      
      public function AbstractPlayStateView(viewContainer:UIContainerRovio, levelManager:LevelManager, dataModel:DataModel, localizationManager:LocalizationManager)
      {
         super();
         this.mViewContainer = viewContainer;
         this.mLevelManager = levelManager;
         this.mLocalizationManager = localizationManager;
         this.mDataModel = dataModel;
         this.mIsDisabled = true;
         this.init();
      }
      
      public function get viewContainer() : UIContainerRovio
      {
         return this.mViewContainer;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(deltaTime:Number) : void
      {
      }
      
      public function isEnabled() : Boolean
      {
         return !this.mIsDisabled;
      }
      
      protected function init() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function dispose() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function disable(useTransition:Boolean) : void
      {
         this.mIsDisabled = true;
      }
      
      public function enable(useTransition:Boolean) : void
      {
         this.mIsDisabled = false;
      }
      
      protected function getLevelSelectionStateName() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
   }
}
