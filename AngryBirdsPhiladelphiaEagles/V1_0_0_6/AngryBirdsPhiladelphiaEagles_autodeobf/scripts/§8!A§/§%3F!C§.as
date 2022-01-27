package §8!A§
{
   import §!!0§.§ true§;
   import §&b§.§[F§;
   import §3!O§.§5q§;
   import §4&§.§[G§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§+a§;
   
   public class §?!C§ extends §4!?§
   {
       
      
      public function §?!C§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_Credits[0]);
         §9!J§ = new §[G§(§[F§.§9u§,"BACKGROUND_EAGLES");
         §<A§.getItemByName("MovieClip_Loading").setVisibility(true);
         §34§ = true;
         (§<A§.getItemByName("Container_Credits") as §+a§).x = 125;
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:String = §5q§.§5U§;
         §<A§.setText(_loc1_,"TextField_Version_Number_Server");
         var _loc2_:String = §>!?§.§=!N§.§!$§();
         §<A§.setText(_loc2_,"TextField_Version_Number");
         §<A§.getItemByName("TextField_Version_Number").setVisibility(true);
         §<A§.getItemByName("TextField_Version_Number_Server").setVisibility(true);
         §[F§.§9u§.camera.mCurrentCameraSliderLocation = 500;
         §>!?§.§=0§();
      }
      
      override protected function readyToShowCredits() : void
      {
         §<A§.getItemByName("MovieClip_Loading").setVisibility(false);
         if(§[F§.§9u§.slingshot != null)
         {
            if(§[F§.§9u§.slingshot.sprite.visible)
            {
               §[F§.§9u§.slingshot.sprite.visible = false;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §7!O§.§2`§;
         }
      }
   }
}
