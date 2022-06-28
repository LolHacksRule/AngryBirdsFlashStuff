package §'!J§
{
   import §-%§.§]!K§;
   import §;H§.§,!]§;
   import §;H§.§9!3§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §"!t§ extends §9!3§
   {
       
      
      public function §"!t§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function init() : void
      {
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_Credits[0]);
         §&!m§.getItemByName("MovieClip_Loading").setVisibility(true);
         §&!m§.getItemByName("Button_FullScreen").setVisibility(false);
         §+!h§ = new §]!K§(§^!c§.§5!Y§,"INTEL_THEME");
         §?C§ = true;
      }
      
      override protected function readyToShowCredits() : void
      {
         §&!m§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §#!D§.§9!c§ = §"!s§;
               mNextState = §,!]§.§"!s§;
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
   }
}
