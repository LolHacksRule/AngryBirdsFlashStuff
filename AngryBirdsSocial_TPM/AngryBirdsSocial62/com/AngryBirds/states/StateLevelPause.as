package com.AngryBirds.states
{
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
         MouseCursorController.setCursor("");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
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
         }
      }
   }
}
