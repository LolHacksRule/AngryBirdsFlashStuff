package §7"@§
{
   import §%!v§.§[<§;
   import §2!i§.§'M§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class § "%§ extends §9<§
   {
       
      
      public function § "%§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!(AngryBirdsFP11.sUserProgress as §[<§).§6M§("1000-3"))
         {
            §6w§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §6w§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
      }
      
      override protected function setVersionTexts(param1:String, param2:String) : void
      {
         §6w§.setText(param1,"TextField_Version_Number");
         §6w§.setText("","TextField_Version_Number_Server");
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc1_:§ do§ = §3T§.§67§.§2!c§();
         _loc1_.§"!r§(§&!7§.§3V§);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§.getItemByName("MovieClip_Loading").setVisibility(true);
         §6w§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §6w§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §?'§.STATE_NAME;
               break;
            case "EASTER_EGG_3":
               §6w§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §[<§).§`"3§("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
   }
}
