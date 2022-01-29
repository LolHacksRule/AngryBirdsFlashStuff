package com.angrybirds.tournamentEvents.extraPowerup
{
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ExtraPowerupPopup extends AbstractPopup
   {
      
      public static const ID:String = "ExtraPowerupPopup";
      
      private static const COLLECTION_IMAGE_NAME:String = "CollectionItemImage";
       
      
      private var mTournamentEventManager:TournamentEventManager;
      
      private var mExtraPowerupManager:ExtraPowerupManager;
      
      private var mView:MovieClip;
      
      public function ExtraPowerupPopup(layerIndex:int, priority:int, data:XML = null, id:String = "AbstractPopup")
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_ExtraPowerupPopup[0],ID);
         this.mTournamentEventManager = TournamentEventManager.instance;
         this.mExtraPowerupManager = this.mTournamentEventManager.getActivatedEventManager() as ExtraPowerupManager;
      }
      
      override protected function init() : void
      {
         super.init();
         this.mView = mContainer.mClip;
         var winnerData:Object = this.mExtraPowerupManager.getWinnerData();
         var loserData:Object = this.mExtraPowerupManager.getLoserData();
         (this.mView.Textfield_WinnerAmount as TextField).text = "" + winnerData.amount;
         (this.mView.Textfield_LoserAmount as TextField).text = "" + loserData.amount;
         (this.mView.Textfield_PowerupAmount as TextField).text = "" + this.mExtraPowerupManager.getItemsCollected();
         (this.mView.Opponent1Winner as MovieClip).visible = winnerData.id == 1;
         (this.mView.Opponent2Winner as MovieClip).visible = winnerData.id == 2;
         (this.mView.Opponent1Loser as MovieClip).visible = winnerData.id == 2;
         (this.mView.Opponent2Loser as MovieClip).visible = winnerData.id == 1;
         this.mView.Opponent1Text.visible = winnerData.id == 1;
         this.mView.Opponent2Text.visible = winnerData.id == 2;
         FriendsUtil.doBrandedImageReplacement(COLLECTION_IMAGE_NAME + "_" + TournamentModel.instance.tournamentRules.brandedFrameLabel,COLLECTION_IMAGE_NAME,this.mView);
      }
   }
}
