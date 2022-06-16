package §@",§
{
   import §;n§.§^!;§;
   import §<";§.§'y§;
   import §>s§.§;"&§;
   import §>s§.§@c§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §0"'§ extends §`f§
   {
       
      
      public function §0"'§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!(AngryBirdsFP11.sUserProgress as §'y§).§#!e§("1000-3"))
         {
            §2!K§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §2!K§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
      }
      
      override protected function setVersionTexts(param1:String, param2:String) : void
      {
         §2!K§.setText(param1,"TextField_Version_Number");
         §2!K§.setText("","TextField_Version_Number_Server");
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc1_:§;"&§ = §,"I§.§&q§.§1H§();
         _loc1_.§ 7§(§@c§.§?!M§);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§.getItemByName("MovieClip_Loading").setVisibility(true);
         §2!K§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §2!K§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §6!B§.STATE_NAME;
               break;
            case "EASTER_EGG_3":
               §2!K§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §'y§).§?"%§("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
   }
}
