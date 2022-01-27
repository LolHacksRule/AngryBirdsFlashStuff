package §>Y§
{
   import §!6§.§3!5§;
   import §"^§.§9=§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§]_§;
   import §=u§.§>v§;
   import §]!B§.§8!B§;
   
   public class §@!+§ extends §6[§
   {
       
      
      public function §@!+§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_Credits[0]);
         §'!O§ = new §8!B§(§9=§.§<!@§,"BACKGROUND_EAGLES");
         §3g§.getItemByName("MovieClip_Loading").setVisibility(true);
         §0!2§ = true;
         (§3g§.getItemByName("Container_Credits") as §>v§).x = 125;
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:String = §3!5§.§ q§;
         §3g§.setText(_loc1_,"TextField_Version_Number_Server");
         var _loc2_:String = §#'§.§20§.§5x§();
         §3g§.setText(_loc2_,"TextField_Version_Number");
         §3g§.getItemByName("TextField_Version_Number").setVisibility(true);
         §3g§.getItemByName("TextField_Version_Number_Server").setVisibility(true);
         §9=§.§<!@§.camera.mCurrentCameraSliderLocation = 500;
         §#'§.§if §();
      }
      
      override protected function readyToShowCredits() : void
      {
         §3g§.getItemByName("MovieClip_Loading").setVisibility(false);
         if(§9=§.§<!@§.slingshot != null)
         {
            if(§9=§.§<!@§.slingshot.sprite.visible)
            {
               §9=§.§<!@§.slingshot.sprite.visible = false;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §%R§.§4!C§;
         }
      }
   }
}
