package §7!%§
{
   import §%B§.§^k§;
   import §-!@§.Popup;
   import §-!@§.StatePopupManager;
   import §5!8§.§6m§;
   import §=!2§.§65§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   
   public class §8!q§ extends Popup
   {
       
      
      private var §'<§:StatePopupManager;
      
      public function §8!q§(param1:§%!u§, param2:String, param3:StatePopupManager)
      {
         super(§#! §.§5!;§.Views.PopupView_Error[0],param1);
         (getItemByName("TextField_ErrorMessage") as §6m§).setText(param2);
         this.§'<§ = param3;
         this.§'<§.addEventListener(§65§.§]!7§,this.onUiInteraction);
         §`!2§ = §%!l§;
      }
      
      private function onUiInteraction(param1:§65§) : void
      {
         this.uiInteractionHandler(param1.§3!$§,param1.§!3§,param1.component);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "CLOSE_POPUP":
               §^k§.playSound("Sound_Button_Back");
               this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         this.§'<§.removeEventListener(§65§.§]!7§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
   }
}
