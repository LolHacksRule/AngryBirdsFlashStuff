package §?'§
{
   import §'m§.§^S§;
   import §7!4§.§+!2§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;j§.§8[§;
   import §in§.§%K§;
   
   public class §9!=§ extends §2!!§
   {
       
      
      public function §9!=§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_Credits[0]);
         §&x§ = new §+!2§(§8[§.§import§,"BACKGROUND_LOTUS");
         §<o§.getItemByName("MovieClip_Loading").setVisibility(true);
         §7V§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:String = §^S§.§?!G§;
         §<o§.setText(_loc1_,"TextField_Version_Number");
         §<o§.getItemByName("TextField_Version_Number").setVisibility(true);
         §<o§.getItemByName("TextField_Version_Number_Server").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §<o§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §0k§.§`%§;
         }
      }
   }
}
