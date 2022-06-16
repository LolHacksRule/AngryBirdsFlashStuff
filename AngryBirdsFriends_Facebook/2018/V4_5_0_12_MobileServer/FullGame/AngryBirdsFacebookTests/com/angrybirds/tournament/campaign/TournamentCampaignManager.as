package com.angrybirds.tournament.campaign
{
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class TournamentCampaignManager
   {
      
      private static var smCampaigns:Vector.<CampaignDefinition>;
      
      private static var smCampaignsLoaded:Boolean = false;
       
      
      private var mActivatedCampaign:CampaignDefinition;
      
      public function TournamentCampaignManager()
      {
         super();
      }
      
      public static function addCampaign(tournamentID:String, data:Object) : void
      {
         if(smCampaigns == null)
         {
            smCampaigns = new Vector.<CampaignDefinition>();
         }
         smCampaigns.push(new CampaignDefinition(tournamentID,data));
      }
      
      public static function loadCampaigns() : void
      {
         if(!smCampaignsLoaded)
         {
            smCampaignsLoaded = true;
         }
      }
      
      public function activateCampaign(campaignID:String) : CampaignDefinition
      {
         var campaign:CampaignDefinition = null;
         for each(campaign in smCampaigns)
         {
            if(campaign.id == campaignID)
            {
               this.mActivatedCampaign = campaign;
               return campaign;
            }
         }
         return null;
      }
      
      public function deActivateCurrentCampaign() : void
      {
         this.mActivatedCampaign = null;
      }
      
      public function campaignUIInteraction(eventName:String) : void
      {
         if(!this.mActivatedCampaign || !eventName)
         {
            return;
         }
         if(eventName == "TOURNAMENT_CAMPAIGN_CLICKED")
         {
            this.doCampaignAction();
         }
      }
      
      public function doCampaignAction() : void
      {
         if(!this.mActivatedCampaign)
         {
            return;
         }
         FacebookAnalyticsCollector.getInstance().trackBrandedButtonClick(this.mActivatedCampaign.id);
         this.openExternalLink(this.mActivatedCampaign.campaignURL);
      }
      
      private function openExternalLink(urlString:String) : void
      {
         if(!urlString || urlString.length == 0)
         {
         }
         var url:URLRequest = new URLRequest(urlString);
         try
         {
            AngryBirdsBase.singleton.exitFullScreen();
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
   }
}
