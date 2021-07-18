package com.AngryBirds.states
{
   import com.AngryBirds.io.AngryBirdsExternalInterface;
   import com.AngryBirds.io.StatisticsList;
   import com.AngryBirds.io.StatisticsManager;
   import com.AngryBirds.ui.ViewLevelPause;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   
   public class StateLevelPause extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelPauseState";
       
      
      public function StateLevelPause(param1:Boolean = false, param2:String = "LevelPauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelPause(this);
         mUIView.init(null);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!contains(AngryBirdsSocial.smLevelMain))
         {
            addChildAt(AngryBirdsSocial.smLevelMain,0);
         }
         mUIView.getItemByName("Button_LevelOfTheDay_Competition").setVisibility(AngryBirdsSocial.smLevelMain.isLevelOfDay());
         MouseCursorController.setCursor("");
         if(AngryBirdsSocial.DEBUG_MODE_ENABLED)
         {
            mUIView.getItemByName("Container_Debug").setVisibility(true);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(AngryBirdsSocial.smLevelMain.isLevelOfDay() && AngryBirdsSocial.smLevelMain.mLevelOfDayEndTime > 0)
         {
            mUIView.setText("competition ends in: " + AngryBirdsSocial.generateTimeLeftStr(AngryBirdsSocial.smLevelMain.mLevelOfDayEndTime),"TextFiels_LevelOfTheDay_Competition");
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         if(contains(AngryBirdsSocial.smLevelMain))
         {
            removeChild(AngryBirdsSocial.smLevelMain);
         }
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               mNextState = StateLevelLoad.STATE_NAME;
               StateLevelLoad.prepareToRestartLastLevel();
               StatisticsManager.markEvent(StatisticsList.LEVEL_RESTARTED,AngryBirdsSocial.smLevelMain.mLevelData.levelID,null,true);
               break;
            case "RESUME_LEVEL":
               mNextState = StateLevelPlay.STATE_NAME;
               break;
            case "END_LEVEL":
               mNextState = StateLevelOverVictory.STATE_NAME;
               break;
            case "OPEN_EDITOR":
               AngryBirdsSocial.smEditorMode = true;
               mNextState = StateLevelEditorStart.STATE_NAME;
               break;
            case "OPEN_LEVEL_OF_DAY":
               if(AngryBirdsSocial.USER.loggedIn)
               {
                  StateLevelOfTheDay.smInitiatingState = STATE_NAME;
                  this.mNextState = StateLevelOfTheDay.STATE_NAME;
               }
               else
               {
                  AngryBirdsExternalInterface.openLogin();
               }
               break;
            case "OPEN_BROWSE_LEVELS":
               mNextState = StateBrowseLevels.STATE_NAME;
               StateBrowseLevels.smInitiatingState = STATE_NAME;
               break;
            case "SOUNDS_TOGGLE":
               AngryBirdsSocial.setSoundsEnabled(!AngryBirdsSocial.smSoundsEnabled);
               if(AngryBirdsSocial.smSoundsEnabled)
               {
                  AngryBirdsSocial.smLevelMain.mLevelBackground.playBackgroundMusic();
               }
               (mUIView as ViewLevelPause).updateSoundsToggleButtonState();
         }
      }
   }
}
