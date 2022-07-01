package §1!5§
{
   import § true§.§<"-§;
   import §""§.Popup;
   import §""§.StatePopupManager;
   import §,!@§.§&!j§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §4!j§.§0p§;
   import §>Z§.§5;§;
   
   public class §`!2§ extends Popup
   {
       
      
      private var §?!>§:StatePopupManager;
      
      public function §`!2§(param1:§=!]§, param2:String, param3:StatePopupManager)
      {
         super(§,!h§.§`C§.Views.PopupView_Error[0],param1);
         (getItemByName("TextField_ErrorMessage") as §<"-§).setText(param2);
         this.§?!>§ = param3;
         this.§?!>§.addEventListener(§&!j§.§<G§,this.onUiInteraction);
         §<#§ = §4!_§;
      }
      
      private function onUiInteraction(param1:§&!j§) : void
      {
         this.uiInteractionHandler(param1.§6o§,param1.§0!'§,param1.component);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "CLOSE_POPUP":
               §5;§.playSound("Sound_Button_Back");
               this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         this.§?!>§.removeEventListener(§&!j§.§<G§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
   }
}
