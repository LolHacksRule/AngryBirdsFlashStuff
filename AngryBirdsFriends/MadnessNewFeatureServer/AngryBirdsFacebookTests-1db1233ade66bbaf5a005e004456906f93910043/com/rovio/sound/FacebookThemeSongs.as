package com.rovio.sound
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.states.tournament.StateTournamentResults;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.TournamentRules;
   import com.rovio.assets.AssetCache;
   
   public class FacebookThemeSongs
   {
      
      public static const STREAM_URL_GD_TROUBLEMAKER:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Troublemaker.mp3";
      
      public static const STREAM_URL_GD_LAZYBONES:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Lazy_Bones.mp3";
      
      public static const STREAM_URL_GD_OHLOVE:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Oh_Love.mp3";
      
      public static const GREENDAY_CHANNEL_INGAME:String = "CHANNEL_GREENDAY_INGAME";
      
      public static const GREENDAY_THEME_INGAME:String = "GreenDayInGame";
      
      public static const GREENDAY_THEME_INGAME_LAZY_BONES:String = "GreenDayInGameLazyBones";
      
      public static const GREENDAY_THEME:String = "GreenDayTheme";
      
      public static const CHRISTMAS_THEME_ID:String = "AB_FB_Theme_Christmas";
       
      
      private var mThemeSongManager:ThemeMusicManager;
      
      public function FacebookThemeSongs(manager:ThemeMusicManager)
      {
         super();
         this.mThemeSongManager = manager;
         this.registerSong(AngryBirdsBase.ANGRYBIRDS_THEME_MUSIC_ID);
      }
      
      public static function get themeSongName() : String
      {
         var soundClassName:String = null;
         var themeId:String = AngryBirdsBase.ANGRYBIRDS_THEME_MUSIC_ID;
         if(TournamentModel.instance.isOverlappingTournamentsEnabled())
         {
            if(AngryBirdsEngine.smApp.getCurrentState() != StateTournamentLevelSelection.STATE_NAME && AngryBirdsEngine.smApp.getCurrentState() != StateTournamentResults.STATE_NAME)
            {
               return themeId;
            }
         }
         var tournamentRules:TournamentRules = TournamentModel.instance.tournamentRules;
         if(tournamentRules)
         {
            soundClassName = "THEME_MUSIC_" + tournamentRules.brandedFrameLabel;
            if(AssetCache.assetInCache(soundClassName))
            {
               themeId = soundClassName;
            }
         }
         return themeId;
      }
      
      public function get themeSongManager() : ThemeMusicManager
      {
         return this.mThemeSongManager;
      }
      
      public function registerSong(id:String) : void
      {
         var musicObject:ThemeMusicObject = new ThemeMusicObject(id,AngryBirdsBase.ANGRYBIRDS_THEME_MUSIC_CHANNEL,0.5,1);
         this.mThemeSongManager.registerSong(musicObject);
      }
   }
}
