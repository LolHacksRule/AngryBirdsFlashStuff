package §,!"§
{
   import §"U§.§[Q§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §<G§.§@^§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   
   public class §;!L§ extends §,!#§
   {
       
      
      public function §;!L§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_Credits[0]);
         §4!I§ = new §@^§(§#! §.§`'§,"BACKGROUND_EAGLES");
         §0q§.getItemByName("MovieClip_Loading").setVisibility(true);
         §&K§ = true;
         (§0q§.getItemByName("Container_Credits") as §[Q§).x = 125;
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:String = § L§.§;!+§;
         §0q§.setText(_loc1_,"TextField_Version_Number_Server");
         var _loc2_:String = §!D§.§46§.§!5§();
         §0q§.setText(_loc2_,"TextField_Version_Number");
         §0q§.getItemByName("TextField_Version_Number").setVisibility(true);
         §0q§.getItemByName("TextField_Version_Number_Server").setVisibility(true);
         §#! §.§`'§.camera.mCurrentCameraSliderLocation = 500;
         §!D§.§[5§();
      }
      
      override protected function readyToShowCredits() : void
      {
         §0q§.getItemByName("MovieClip_Loading").setVisibility(false);
         if(§#! §.§`'§.slingshot != null)
         {
            if(§#! §.§`'§.slingshot.sprite.visible)
            {
               §#! §.§`'§.slingshot.sprite.visible = false;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §@f§.§-A§;
         }
      }
   }
}
