package com.angrybirds.states.tournament.branded
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.tournament.StateTournamentLevelEndFail;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.utils.FPSMovieClipPlayer;
   import flash.display.MovieClip;
   
   public class StateTournamentLevelEndFailBranded extends StateTournamentLevelEndFail
   {
       
      
      private var mLaughFPSs:Vector.<FPSMovieClipPlayer>;
      
      public function StateTournamentLevelEndFailBranded(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "stateTournamentLevelEndFail")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function init() : void
      {
         var laughingPig:MovieClip = null;
         var levelFailIcon:MovieClip = null;
         super.init();
         var failIconLinkageName:String = "LEVEL_FAIL_ICON_" + TournamentModel.instance.tournamentRules.brandedFrameLabel;
         var iconClass:Class = AssetCache.getAssetFromCache(failIconLinkageName,false);
         if(iconClass)
         {
            laughingPig = mUIView.getItemByName("pigHolder").mClip;
            laughingPig.removeChildren();
            levelFailIcon = new iconClass();
            laughingPig.addChild(levelFailIcon);
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
      }
      
      override protected function playFailSound() : void
      {
         var ownSoundFound:Boolean = false;
         var tournamentFailSFXLinkageName:String = "LEVEL_FAIL_SFX_" + TournamentModel.instance.tournamentRules.brandedFrameLabel;
         if(AssetCache.assetInCache(tournamentFailSFXLinkageName))
         {
            SoundEngine.stopSounds();
            SoundEngine.playSound(tournamentFailSFXLinkageName,SoundEngine.DEFAULT_CHANNEL_NAME);
            ownSoundFound = true;
         }
         if(!ownSoundFound)
         {
            super.playFailSound();
         }
      }
   }
}
