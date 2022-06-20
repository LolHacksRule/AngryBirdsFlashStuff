package com.angrybirds.states.tournament.branded
{
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.tournament.StateTournamentPlay;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.Components.UIContainerRovio;
   
   public class StateTournamentPlayBranded extends StateTournamentPlay
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function StateTournamentPlayBranded(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "stateTournamentPlay")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function addPlayView() : void
      {
         var model:DataModel = AngryBirdsBase.singleton.dataModel;
         var playContainer:UIContainerRovio = UIContainerRovio(mUIView.getItemByName("Container_Play"));
         mPlayView = new TournamentBrandedPlayView(playContainer,mLevelManager,mLevelController,model,mLocalizationManager);
      }
   }
}
