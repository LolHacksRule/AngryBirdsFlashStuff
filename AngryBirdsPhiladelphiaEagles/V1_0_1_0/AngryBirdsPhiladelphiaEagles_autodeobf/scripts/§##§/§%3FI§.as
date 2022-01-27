package §##§
{
   import §'!N§.§%!E§;
   import §-!5§.§5s§;
   import §6a§.§1x§;
   import §=8§.§'^§;
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   
   public class §?I§ extends §2!5§
   {
       
      
      public function §?I§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_Credits[0]);
         §^!#§ = new §1x§(§2G§.§7!,§,"BACKGROUND_EAGLES");
         § §.getItemByName("MovieClip_Loading").setVisibility(true);
         §8U§ = true;
         (§ §.getItemByName("Container_Credits") as §'^§).x = 125;
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:String = §5s§.§8W§;
         § §.setText(_loc1_,"TextField_Version_Number_Server");
         var _loc2_:String = §#g§.§^!G§.§ o§();
         § §.setText(_loc2_,"TextField_Version_Number");
         § §.getItemByName("TextField_Version_Number").setVisibility(true);
         § §.getItemByName("TextField_Version_Number_Server").setVisibility(true);
         §2G§.§7!,§.camera.mCurrentCameraSliderLocation = 500;
         §#g§.§+Q§();
      }
      
      override protected function readyToShowCredits() : void
      {
         § §.getItemByName("MovieClip_Loading").setVisibility(false);
         if(§2G§.§7!,§.slingshot != null)
         {
            if(§2G§.§7!,§.slingshot.sprite.visible)
            {
               §2G§.§7!,§.slingshot.sprite.visible = false;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §package§.§=,§;
         }
      }
   }
}
