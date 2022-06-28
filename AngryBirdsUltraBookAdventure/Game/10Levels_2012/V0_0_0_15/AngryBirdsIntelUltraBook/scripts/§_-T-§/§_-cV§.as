package §_-T-§
{
   import §_-0Dg§.§class§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.§_-7A§;
   import §_-ad§.§_-Rp§;
   import §_-qO§.§ in§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-cV§ extends §_-7A§
   {
       
      
      public function §_-cV§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function init() : void
      {
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_Credits[0]);
         §_-s0§.getItemByName("MovieClip_Loading").setVisibility(true);
         §_-s0§.getItemByName("Button_FullScreen").setVisibility(false);
         §_-kL§ = new §class§(§ in§.§_-Dc§,"INTEL_THEME");
         §_-I8§ = true;
      }
      
      override protected function readyToShowCredits() : void
      {
         §_-s0§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §_-aa§.§_-yr§ = §_-pk§;
               mNextState = §_-Rp§.§_-pk§;
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
   }
}
