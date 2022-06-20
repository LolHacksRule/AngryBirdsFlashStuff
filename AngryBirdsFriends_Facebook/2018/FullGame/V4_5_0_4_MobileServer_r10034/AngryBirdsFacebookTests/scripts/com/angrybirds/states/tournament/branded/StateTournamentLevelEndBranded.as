package com.angrybirds.states.tournament.branded
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.tournament.StateTournamentLevelEnd;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   
   public class StateTournamentLevelEndBranded extends StateTournamentLevelEnd
   {
       
      
      public function StateTournamentLevelEndBranded(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "stateTournamentLevelEnd")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         var tournamentWinSFXLinkageName:String = "LEVEL_WIN_SFX_" + TournamentModel.instance.tournamentRules.brandedFrameLabel;
         if(AssetCache.assetInCache(tournamentWinSFXLinkageName))
         {
            SoundEngine.stopSounds();
            SoundEngine.playSound(tournamentWinSFXLinkageName,SoundEngine.DEFAULT_CHANNEL_NAME);
         }
      }
   }
}
