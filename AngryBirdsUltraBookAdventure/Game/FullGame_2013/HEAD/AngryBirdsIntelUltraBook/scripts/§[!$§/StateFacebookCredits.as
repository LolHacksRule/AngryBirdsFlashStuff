package §[!$§
{
   import §0!Q§.UIEventListenerRovio;
   import §7t§.StateChapterSelection;
   import §7t§.StateCreditsNew;
   import §91§.§4!"§;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookCredits extends StateCreditsNew
   {
       
      
      public function StateFacebookCredits(initState:Boolean = false, name:String = "CreditsState")
      {
         super(initState,name);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function init() : void
      {
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_Credits[0]);
         §`=§.getItemByName("MovieClip_Loading").setVisibility(true);
         §`=§.getItemByName("Button_FullScreen").setVisibility(false);
         §3!'§ = new §4!"§(§`S§.§[o§,"INTEL_THEME");
         §&!C§ = true;
      }
      
      override protected function readyToShowCredits() : void
      {
         §`=§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.uiInteractionHandler(eventIndex,eventName,component);
         switch(eventName)
         {
            case "CREDITS_CLOSE_BUTTON":
               StateFacebookEpisodeSelection.sPreviousState = STATE_NAME;
               mNextState = StateChapterSelection.STATE_NAME;
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
   }
}
