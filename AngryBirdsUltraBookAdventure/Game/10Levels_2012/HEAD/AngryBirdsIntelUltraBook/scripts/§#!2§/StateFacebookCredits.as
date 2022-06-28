package §#!2§
{
   import §-!>§.§4!T§;
   import §9!H§.§@1§;
   import §9c§.StateChapterSelection;
   import §9c§.StateCreditsNew;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
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
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_Credits[0]);
         §^,§.getItemByName("MovieClip_Loading").setVisibility(true);
         §^,§.getItemByName("Button_FullScreen").setVisibility(false);
         §5m§ = new §@1§(§4!T§.§1t§,"INTEL_THEME");
         §"=§ = true;
      }
      
      override protected function readyToShowCredits() : void
      {
         §^,§.getItemByName("MovieClip_Loading").setVisibility(false);
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
