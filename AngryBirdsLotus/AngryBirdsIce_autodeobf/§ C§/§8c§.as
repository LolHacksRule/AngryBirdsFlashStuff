package § C§
{
   import §!F§.§>J§;
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §;8§.§3f§;
   import §`W§.§-[§;
   
   public class §8c§ extends §%H§
   {
       
      
      public function §8c§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_Credits[0]);
         §6!6§ = new §>J§(§[o§.§='§,"BACKGROUND_LOTUS");
         §,R§.getItemByName("MovieClip_Loading").setVisibility(true);
         §@!9§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:String = §3f§.§7f§;
         §,R§.setText(_loc1_,"TextField_Version_Number");
         §,R§.getItemByName("TextField_Version_Number").setVisibility(true);
         §,R§.getItemByName("TextField_Version_Number_Server").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §,R§.getItemByName("MovieClip_Loading").setVisibility(false);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §>!9§.§?B§;
         }
      }
   }
}
