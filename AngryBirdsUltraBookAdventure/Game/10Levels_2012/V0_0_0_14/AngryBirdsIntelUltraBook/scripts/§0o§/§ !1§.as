package §0o§
{
   import § !k§.§6!5§;
   import § !k§.§?U§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §2!!§.§<!b§;
   import §5i§.§4!]§;
   import §=R§.§7!"§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class § !1§ extends §6!5§
   {
       
      
      public function § !1§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function init() : void
      {
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_Credits[0]);
         §`-§.getItemByName("MovieClip_Loading").setVisibility(true);
         §`-§.getItemByName("Button_FullScreen").setVisibility(false);
         §+4§ = new §<!b§(§4!]§.§8C§,"INTEL_THEME");
         §[!?§ = true;
      }
      
      override protected function readyToShowCredits() : void
      {
         §`-§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §;%§.§2s§ = §3F§;
               mNextState = §?U§.§3F§;
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
   }
}
