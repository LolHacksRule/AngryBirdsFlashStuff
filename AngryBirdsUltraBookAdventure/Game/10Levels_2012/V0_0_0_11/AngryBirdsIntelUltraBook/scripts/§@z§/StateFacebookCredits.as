package §@z§
{
   import § D§.§]!B§;
   import §2!?§.§>X§;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §<!S§.StateChapterSelection;
   import §<!S§.StateCreditsNew;
   import §>!-§.UIEventListenerRovio;
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
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_Credits[0]);
         §5!M§.getItemByName("MovieClip_Loading").setVisibility(true);
         §5!M§.getItemByName("Button_FullScreen").setVisibility(false);
         §8!i§ = new §>X§(§]!B§.§>F§,"INTEL_THEME");
         §'n§ = true;
      }
      
      override protected function readyToShowCredits() : void
      {
         §5!M§.getItemByName("MovieClip_Loading").setVisibility(false);
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
