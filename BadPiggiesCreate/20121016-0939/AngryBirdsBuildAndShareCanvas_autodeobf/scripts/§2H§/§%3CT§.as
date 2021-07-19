package §2H§
{
   import §'!A§.§-!S§;
   import §'p§.§`!<§;
   import §+h§.Popup;
   import §+h§.StatePopupManager;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §6!U§.§+!!§;
   
   public class §<T§ extends Popup
   {
       
      
      private var §2P§:StatePopupManager;
      
      public function §<T§(param1:§'s§, param2:String, param3:StatePopupManager)
      {
         super(§`7§.§>"?§.Views.PopupView_Error[0],param1);
         (getItemByName("TextField_ErrorMessage") as §`!<§).setText(param2);
         this.§2P§ = param3;
         this.§2P§.addEventListener(§+!!§.§]!M§,this.onUiInteraction);
         §0!x§ = §-8§;
      }
      
      private function onUiInteraction(param1:§+!!§) : void
      {
         this.uiInteractionHandler(param1.§&!X§,param1.§1_§,param1.component);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "CLOSE_POPUP":
               §5!U§.playSound("Sound_Button_Back");
               this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         this.§2P§.removeEventListener(§+!!§.§]!M§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
   }
}
