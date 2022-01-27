package §=!0§
{
   import §!t§.§;1§;
   import §"1§.§3'§;
   import §5F§.§+!O§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §>!D§.§^+§;
   
   public class §1h§ extends §9!D§
   {
       
      
      public function §1h§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_Credits[0]);
         §;!K§ = new §^+§(§0!E§.§9!B§,"BACKGROUND_EAGLES");
         §;I§.getItemByName("MovieClip_Loading").setVisibility(true);
         §@s§ = true;
         (§;I§.getItemByName("Container_Credits") as §;1§).x = 125;
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:String = §3'§.§>4§;
         §;I§.setText(_loc1_,"TextField_Version_Number_Server");
         var _loc2_:String = §=!<§.§4M§.§5!I§();
         §;I§.setText(_loc2_,"TextField_Version_Number");
         §;I§.getItemByName("TextField_Version_Number").setVisibility(true);
         §;I§.getItemByName("TextField_Version_Number_Server").setVisibility(true);
         §0!E§.§9!B§.camera.mCurrentCameraSliderLocation = 500;
         §=!<§.§!!!§();
      }
      
      override protected function readyToShowCredits() : void
      {
         §;I§.getItemByName("MovieClip_Loading").setVisibility(false);
         if(§0!E§.§9!B§.slingshot != null)
         {
            if(§0!E§.§9!B§.slingshot.sprite.visible)
            {
               §0!E§.§9!B§.slingshot.sprite.visible = false;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §9!+§.§@§;
         }
      }
   }
}
