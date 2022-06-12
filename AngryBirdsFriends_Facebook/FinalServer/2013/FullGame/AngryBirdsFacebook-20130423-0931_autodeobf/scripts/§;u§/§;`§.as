package §;u§
{
   import §1!t§.§""B§;
   import §8m§.§6!n§;
   import §8m§.§;!e§;
   import §@!%§.§#!$§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §;`§ extends §&"[§
   {
       
      
      public function §;`§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!(AngryBirdsFP11.sUserProgress as §#!$§).§,"F§("1000-3"))
         {
            §2"@§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §2"@§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
      }
      
      override protected function setVersionTexts(param1:String, param2:String) : void
      {
         §2"@§.setText(param1,"TextField_Version_Number");
         §2"@§.setText("","TextField_Version_Number_Server");
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc1_:§6!n§ = §%"S§.§!C§.§#"C§();
         _loc1_.§3%§(§;!e§.§^a§);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§.getItemByName("MovieClip_Loading").setVisibility(true);
         §2"@§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §2"@§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §9!V§.STATE_NAME;
               break;
            case "EASTER_EGG_3":
               §2"@§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §#!$§).§9!'§("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
   }
}
