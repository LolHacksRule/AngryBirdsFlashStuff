package com.angrybirds.states.tournament.branded
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.tournament.StateLastWeeksTournamentResults;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.utils.MovieClipFrameLabelTool;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class StateLastWeeksTournamentResultsBranded extends StateLastWeeksTournamentResults
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      public function StateLastWeeksTournamentResultsBranded(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "StateLastWeeksTournamentResults")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_BrandedTournamentPrevious[0]);
         var brandedFrameLabel:String = TournamentModel.instance.tournamentRules.brandedFrameLabel;
         MovieClipFrameLabelTool.setStopToLabel(mUIView.getItemByName("CombinedBackground").mClip,brandedFrameLabel);
         MovieClipFrameLabelTool.setStopToLabel(mUIView.getItemByName("ShelfContainer").mClip,brandedFrameLabel);
         MovieClipFrameLabelTool.setStopToLabel(mUIView.getItemByName("TitleSignContainer").mClip,brandedFrameLabel);
         MovieClipFrameLabelTool.setStopToLabel(mUIView.getItemByName("PreviousWeekTextContainer").mClip,brandedFrameLabel);
      }
   }
}
