package com.angrybirds.states.tournament
{
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.StateFacebookPlay;
   import com.angrybirds.states.tournament.playstate.TournamentPauseView;
   import com.angrybirds.states.tournament.playstate.TournamentPlayView;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.Components.UIContainerRovio;
   
   public class StateTournamentPlay extends StateFacebookPlay
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function StateTournamentPlay(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "stateTournamentPlay")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function addPauseView() : void
      {
         var model:DataModel = AngryBirdsBase.singleton.dataModel;
         var pauseContainer:UIContainerRovio = UIContainerRovio(mUIView.getItemByName("Container_Pause"));
         mPauseView = new TournamentPauseView(pauseContainer,mLevelManager,model,mLocalizationManager,mRovioNewsManager);
         pauseContainer.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var model:DataModel = AngryBirdsBase.singleton.dataModel;
         var playContainer:UIContainerRovio = UIContainerRovio(mUIView.getItemByName("Container_Play"));
         mPlayView = new TournamentPlayView(playContainer,mLevelManager,mLevelController,model,mLocalizationManager);
      }
      
      override public function getVictoryStateName() : String
      {
         return StateTournamentLevelEnd.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return StateTournamentLevelEndFail.STATE_NAME;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return StateTournamentLevelLoad.STATE_NAME;
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         TournamentModel.instance.checkTournamentEnd();
      }
   }
}
