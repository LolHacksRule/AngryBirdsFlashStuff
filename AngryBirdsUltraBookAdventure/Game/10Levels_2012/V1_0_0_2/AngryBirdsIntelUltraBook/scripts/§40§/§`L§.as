package §40§
{
   import §"m§.§;!v§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9!5§.§!1§;
   import §9!5§.§0!`§;
   import §9Y§.§6!8§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §true§.§ _§;
   
   public class §`L§ extends §!1§
   {
       
      
      public function §`L§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function init() : void
      {
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_Credits[0]);
         §5!P§.getItemByName("MovieClip_Loading").setVisibility(true);
         §5!P§.getItemByName("Button_FullScreen").setVisibility(false);
         §#j§ = new §;!v§(§ _§.§!6§,"INTEL_THEME");
         §<"§ = true;
      }
      
      override protected function readyToShowCredits() : void
      {
         §5!P§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §'!j§.§`]§ = §?h§;
               mNextState = §0!`§.§?h§;
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
   }
}
