package §+h§
{
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§="#§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §6!U§.§+!!§;
   import §6" §.§<8§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §`r§ extends Popup
   {
       
      
      private var §2P§:StatePopupManager;
      
      public function §`r§(param1:§'s§, param2:StatePopupManager)
      {
         super(§`7§.§>"?§.Views.PopupView_Tools[0],param1);
         this.§2P§ = param2;
         param2.addEventListener(§+!!§.§]!M§,this.onUiInteraction);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§0!$§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§!!H§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§3!s§);
         this.update();
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
      
      private function update(param1:Event = null) : void
      {
         var _loc2_:String = !!§<8§.§5!i§().§&!h§(§<8§.§,!4§) ? §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT : §9!!§.§,!0§;
         (getItemByName("Button_SettingSnap") as §="#§).setComponentState(_loc2_);
         _loc2_ = !!§<8§.§5!i§().§&!h§(§<8§.§0!g§) ? §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT : §9!!§.§,!0§;
         (getItemByName("Button_SettingTips") as §="#§).setComponentState(_loc2_);
         _loc2_ = !!§<8§.§5!i§().§&!h§(§<8§.§7"§) ? §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT : §9!!§.§,!0§;
         (getItemByName("Button_SettingZoom") as §="#§).setComponentState(_loc2_);
      }
      
      private function §0!$§(param1:MouseEvent) : void
      {
         §<8§.§5!i§().§&!W§(§<8§.§,!4§);
         this.update();
      }
      
      private function §!!H§(param1:MouseEvent) : void
      {
         §<8§.§5!i§().§&!W§(§<8§.§0!g§);
         this.update();
      }
      
      private function §3!s§(param1:MouseEvent) : void
      {
         §<8§.§5!i§().§&!W§(§<8§.§7"§);
         this.update();
      }
   }
}
