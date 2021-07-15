package com.angrybirds.states.playstate
{
   import com.angrybirds.data.DataModel;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.AngryBirdsEngine;
   
   public class BasePlayStateView extends AbstractPlayStateView
   {
       
      
      public function BasePlayStateView(param1:UIContainerRovio, param2:LevelManager, param3:DataModel, param4:LocalizationManager)
      {
         super(param1,param2,param3,param4);
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
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         AngryBirdsEngine.mIsRunning.background.playAmbientSound();
      }
   }
}
