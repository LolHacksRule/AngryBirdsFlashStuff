package com.angrybirds.states.playstate
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.Components.UIContainerRovio;
   
   public class BasePlayStateView extends AbstractPlayStateView
   {
       
      
      public function BasePlayStateView(viewContainer:UIContainerRovio, levelManager:LevelManager, dataModel:DataModel, localizationManager:LocalizationManager)
      {
         super(viewContainer,levelManager,dataModel,localizationManager);
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function isAllowedToChangeStateRegardingPowerUpsRunning() : Boolean
      {
         return true;
      }
      
      public function isAllowedToChangeStateRegardingPowerUpsSyncing() : Boolean
      {
         return true;
      }
      
      public function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      public function isAllowedToChangeFailState() : Boolean
      {
         return true;
      }
      
      override public function enable(useTransition:Boolean) : void
      {
         super.enable(useTransition);
         AngryBirdsEngine.smLevelMain.background.playAmbientSound();
      }
   }
}
