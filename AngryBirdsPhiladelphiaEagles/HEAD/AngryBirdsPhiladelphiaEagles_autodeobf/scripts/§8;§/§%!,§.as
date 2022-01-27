package §8;§
{
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §9c§.§,x§;
   import §<!F§.§5!+§;
   import §=!H§.§9V§;
   import §@V§.§`!5§;
   import §@c§.§>R§;
   
   public class §%!,§ extends §8!4§
   {
       
      
      public function §%!,§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_Credits[0]);
         §&!E§ = new §>R§(§5!+§.§6!§,"BACKGROUND_EAGLES");
         §>2§.getItemByName("MovieClip_Loading").setVisibility(true);
         §9o§ = true;
         (§>2§.getItemByName("Container_Credits") as §9V§).x = 125;
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:String = §`!5§.§%u§;
         §>2§.setText(_loc1_,"TextField_Version_Number_Server");
         var _loc2_:String = §#!1§.§@F§.§];§();
         §>2§.setText(_loc2_,"TextField_Version_Number");
         §>2§.getItemByName("TextField_Version_Number").setVisibility(true);
         §>2§.getItemByName("TextField_Version_Number_Server").setVisibility(true);
         §5!+§.§6!§.camera.mCurrentCameraSliderLocation = 500;
         §#!1§.§6r§();
      }
      
      override protected function readyToShowCredits() : void
      {
         §>2§.getItemByName("MovieClip_Loading").setVisibility(false);
         if(§5!+§.§6!§.slingshot != null)
         {
            if(§5!+§.§6!§.slingshot.sprite.visible)
            {
               §5!+§.§6!§.slingshot.sprite.visible = false;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §+!%§.§"Z§;
         }
      }
   }
}
