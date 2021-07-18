package §-"'§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §=!7§.§!!]§;
   import §?!'§.Popup;
   import §?!'§.StatePopupManager;
   import §@y§.§0=§;
   import §[!E§.§[!f§;
   
   public class §-!p§ extends Popup
   {
       
      
      private var §["<§:StatePopupManager;
      
      public function §-!p§(param1:§>!V§, param2:String, param3:StatePopupManager)
      {
         super(§]!M§.§"!V§.Views.PopupView_Error[0],param1);
         (getItemByName("TextField_ErrorMessage") as §!!]§).setText(param2);
         this.§["<§ = param3;
         this.§["<§.addEventListener(§[!f§.§`h§,this.onUiInteraction);
         §9=§ = §=u§;
      }
      
      private function onUiInteraction(param1:§[!f§) : void
      {
         this.uiInteractionHandler(param1.§4§,param1.§'!5§,param1.component);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "CLOSE_POPUP":
               §0"#§.§9"2§("Sound_Button_Back");
               this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         this.§["<§.removeEventListener(§[!f§.§`h§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
   }
}
