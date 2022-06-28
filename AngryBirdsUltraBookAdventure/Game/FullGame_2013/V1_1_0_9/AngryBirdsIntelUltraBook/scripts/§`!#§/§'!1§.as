package §`!#§
{
   import §2!U§.§8"!§;
   import §2!U§.§<&§;
   import §48§.§>6§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §'!1§ extends §<&§
   {
       
      
      public function §'!1§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function init() : void
      {
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_Credits[0]);
         §'!Q§.getItemByName("MovieClip_Loading").setVisibility(true);
         §'!Q§.getItemByName("Button_FullScreen").setVisibility(false);
         §0! § = new §>6§(§,!s§.§=!I§,"INTEL_THEME");
         §]!E§ = true;
      }
      
      override protected function setVersionTexts(param1:String, param2:String) : void
      {
         param1 = param1.replace(")","");
         §'!Q§.setText(param1,"TextField_Version_Number");
         §'!Q§.setText(param2,"TextField_Version_Number_Server");
      }
      
      override protected function readyToShowCredits() : void
      {
         §'!Q§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §!!2§.§%!i§ = §'!q§;
               mNextState = §8"!§.§'!q§;
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
   }
}
