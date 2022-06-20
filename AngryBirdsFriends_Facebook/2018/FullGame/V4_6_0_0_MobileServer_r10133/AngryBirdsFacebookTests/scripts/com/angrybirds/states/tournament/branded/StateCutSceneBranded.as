package com.angrybirds.states.tournament.branded
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.tournament.StateTournamentCutScene;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.data.localization.LocalizationManager;
   
   public class StateCutSceneBranded extends StateTournamentCutScene
   {
       
      
      public function StateCutSceneBranded(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = true, name:String = "tournamentCutscene")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function stopThemeMusic() : void
      {
         if(TournamentModel.instance.brandedTournamentAssetId != TournamentModel.XMAS_TOURNAMENT)
         {
            super.stopThemeMusic();
         }
      }
      
      override protected function playIntroSound() : void
      {
         if(TournamentModel.instance.brandedTournamentAssetId == TournamentModel.XMAS_TOURNAMENT)
         {
            AngryBirdsBase.singleton.playThemeMusic();
         }
         else
         {
            super.playIntroSound();
         }
      }
      
      override protected function playOutroSound() : void
      {
         if(TournamentModel.instance.brandedTournamentAssetId == TournamentModel.XMAS_TOURNAMENT)
         {
            AngryBirdsBase.singleton.playThemeMusic();
         }
         else
         {
            super.playOutroSound();
         }
      }
   }
}
