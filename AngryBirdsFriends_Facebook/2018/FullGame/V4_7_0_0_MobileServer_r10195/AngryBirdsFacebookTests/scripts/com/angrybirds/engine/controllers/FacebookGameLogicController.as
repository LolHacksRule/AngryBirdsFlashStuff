package com.angrybirds.engine.controllers
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.controllers.events.GameLogicEvent;
   
   public class FacebookGameLogicController extends GameLogicController
   {
       
      
      public function FacebookGameLogicController(levelMain:LevelMain, levelManager:LevelManager)
      {
         super(levelMain,levelManager);
      }
      
      public function get levelMain() : FacebookLevelMain
      {
         return mLevelMain as FacebookLevelMain;
      }
      
      override public function changeGameState(newState:int, forceChange:Boolean = false) : void
      {
         super.changeGameState(newState,forceChange);
         dispatchEvent(new GameLogicEvent(GameLogicEvent.STATE_CHANGED,newState));
      }
   }
}
