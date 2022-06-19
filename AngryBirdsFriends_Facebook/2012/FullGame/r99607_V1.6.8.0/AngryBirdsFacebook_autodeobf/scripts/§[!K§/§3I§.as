package §[!K§
{
   import §,"-§.§2!P§;
   import §1"2§.§,!]§;
   import §1k§.§;W§;
   import §1k§.§`!d§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §3I§ extends §2&§
   {
       
      
      public function §3I§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!(AngryBirdsFP11.sUserProgress as §2!P§).isEggUnlocked("1000-3"))
         {
            §2"-§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §2"-§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc1_:§;W§ = § W§.§%!y§.§1`§();
         _loc1_.§>4§(§`!d§.§90§);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§.getItemByName("MovieClip_Loading").setVisibility(true);
         §2"-§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §2"-§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §=!e§.STATE_NAME;
               break;
            case "EASTER_EGG_3":
               §2"-§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §2!P§).setEggUnlocked("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
   }
}
