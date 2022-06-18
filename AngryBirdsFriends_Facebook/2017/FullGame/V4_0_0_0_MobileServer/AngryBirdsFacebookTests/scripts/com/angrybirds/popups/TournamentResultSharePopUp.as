package com.angrybirds.popups
{
   import com.angrybirds.states.tournament.StateTournamentResults;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import flash.display.MovieClip;
   
   public class TournamentResultSharePopUp extends AbstractPopup
   {
      
      public static const ID:String = "TournamentResultSharePopUp";
       
      
      private var mHeader:String;
      
      private var mBody:String;
      
      private var mCaseId:uint;
      
      public function TournamentResultSharePopUp(layerIndex:int, priority:int, header:String, body:String, caseId:uint)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_TournamentResultShare[0],ID);
         this.mHeader = header;
         this.mBody = body;
         this.mCaseId = caseId;
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         mContainer.mClip.header.text = this.mHeader;
         mContainer.mClip.body.text = this.mBody;
         (mContainer.mClip.image as MovieClip).gotoAndStop(this.getFrameNumber());
      }
      
      private function getFrameNumber() : uint
      {
         var frame:uint = 1;
         switch(this.mCaseId)
         {
            case StateTournamentResults.CASE_FRIENDS_1ST:
               frame = 3;
               break;
            case StateTournamentResults.CASE_FRIENDS_2ND:
               frame = 4;
               break;
            case StateTournamentResults.CASE_FRIENDS_3RD:
               frame = 5;
         }
         return frame;
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "SHARE":
               this.askForSharingPermission();
               switch(this.mCaseId)
               {
                  case StateTournamentResults.CASE_LEAGUE_WIN:
                     FacebookGoogleAnalyticsTracker.trackShareBrag(FacebookAnalyticsCollector.SHARE_BRAG_LEAGUE_WIN);
                     FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_LEAGUE_WIN,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SHARE);
                     break;
                  case StateTournamentResults.CASE_LEAGUE_PROMOTION:
                  case StateTournamentResults.CASE_STAR_PROMOTION:
                     FacebookGoogleAnalyticsTracker.trackShareBrag(FacebookAnalyticsCollector.SHARE_BRAG_PROMOTION);
                     FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_PROMOTION,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SHARE);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_1ST:
                     FacebookGoogleAnalyticsTracker.trackShareBrag(FacebookAnalyticsCollector.SHARE_BRAG_GOLD_TROPHY);
                     FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_GOLD_TROPHY,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SHARE);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_2ND:
                     FacebookGoogleAnalyticsTracker.trackShareBrag(FacebookAnalyticsCollector.SHARE_BRAG_SILVER_TROPHY);
                     FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_SILVER_TROPHY,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SHARE);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_3RD:
                     FacebookGoogleAnalyticsTracker.trackShareBrag(FacebookAnalyticsCollector.SHARE_BRAG_BRONZE_TROPHY);
                     FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_BRONZE_TROPHY,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SHARE);
               }
               break;
            case "SKIP":
               switch(this.mCaseId)
               {
                  case StateTournamentResults.CASE_LEAGUE_WIN:
                     FacebookGoogleAnalyticsTracker.trackShareBragSkip(FacebookAnalyticsCollector.SHARE_BRAG_LEAGUE_WIN);
                     FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_LEAGUE_WIN,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SKIP);
                     break;
                  case StateTournamentResults.CASE_LEAGUE_PROMOTION:
                  case StateTournamentResults.CASE_STAR_PROMOTION:
                     FacebookGoogleAnalyticsTracker.trackShareBragSkip(FacebookAnalyticsCollector.SHARE_BRAG_PROMOTION);
                     FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_PROMOTION,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SKIP);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_1ST:
                     FacebookGoogleAnalyticsTracker.trackShareBragSkip(FacebookAnalyticsCollector.SHARE_BRAG_GOLD_TROPHY);
                     FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_GOLD_TROPHY,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SKIP);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_2ND:
                     FacebookGoogleAnalyticsTracker.trackShareBragSkip(FacebookAnalyticsCollector.SHARE_BRAG_SILVER_TROPHY);
                     FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_SILVER_TROPHY,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SKIP);
                     break;
                  case StateTournamentResults.CASE_FRIENDS_3RD:
                     FacebookGoogleAnalyticsTracker.trackShareBragSkip(FacebookAnalyticsCollector.SHARE_BRAG_BRONZE_TROPHY);
                     FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_BRONZE_TROPHY,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SKIP);
               }
               close();
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
      
      private function askForSharingPermission() : void
      {
         ExternalInterfaceHandler.addCallback("permissionRequestComplete",this.onPermissionRequestCallback);
         ExternalInterfaceHandler.performCall("askForPublishStreamPermission");
      }
      
      private function onPermissionRequestCallback(success:String) : void
      {
         ExternalInterfaceHandler.removeCallback("permissionRequestComplete",this.onPermissionRequestCallback);
         if(success == "true")
         {
            ExternalInterfaceHandler.performCall("shareTournamentResult",this.mCaseId,"");
            close();
         }
      }
   }
}
