package com.angrybirds.states.playstate
{
   import com.angrybirds.data.DataModel;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.StateLevelSelection;
   import com.angrybirds.states.StateLevelLoadClassic;
   import com.rovio.data.localization.LocalizationManager;
   import flash.events.EventDispatcher;
   
   public class AbstractPlayStateView extends EventDispatcher implements IPlayStateView
   {
       
      
      protected var mViewContainer:UIContainerRovio;
      
      protected var mIsDisabled:Boolean;
      
      protected var LevelObjectBirdBlack:DataModel;
      
      protected var mLocalizationManager:LocalizationManager;
      
      protected var mLevelManager:LevelManager;
      
      public function AbstractPlayStateView(param1:UIContainerRovio, param2:LevelManager, param3:DataModel, param4:LocalizationManager)
      {
         super();
         this.mViewContainer = param1;
         this.mLevelManager = param2;
         this.mLocalizationManager = param4;
         this.LevelObjectBirdBlack = param3;
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
      
      public function update(param1:Number) : void
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
      
      public function disable(param1:Boolean) : void
      {
         this.mIsDisabled = true;
      }
      
      public function enable(param1:Boolean) : void
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
