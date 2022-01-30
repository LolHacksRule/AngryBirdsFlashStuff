package §""§
{
   import § true§.§8K§;
   import §%!W§.§9!K§;
   import §,!@§.§&!j§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §>Z§.§5;§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §5![§ extends Popup
   {
       
      
      private var §?!>§:StatePopupManager;
      
      public function §5![§(param1:§=!]§, param2:StatePopupManager)
      {
         super(§,!h§.§`C§.Views.PopupView_Tools[0],param1);
         this.§?!>§ = param2;
         param2.addEventListener(§&!j§.§<G§,this.onUiInteraction);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§package§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§^!L§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8"7§);
         this.update();
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
      
      private function update(param1:Event = null) : void
      {
         var _loc2_:String = !!§9!K§.§8!?§().§6E§(§9!K§.§-y§) ? §""3§.COMPONENT_STATE_ACTIVE_DEFAULT : §""3§.§!`§;
         (getItemByName("Button_SettingSnap") as §8K§).setComponentState(_loc2_);
         _loc2_ = !!§9!K§.§8!?§().§6E§(§9!K§.§<!G§) ? §""3§.COMPONENT_STATE_ACTIVE_DEFAULT : §""3§.§!`§;
         (getItemByName("Button_SettingTips") as §8K§).setComponentState(_loc2_);
         _loc2_ = !!§9!K§.§8!?§().§6E§(§9!K§.§>$§) ? §""3§.COMPONENT_STATE_ACTIVE_DEFAULT : §""3§.§!`§;
         (getItemByName("Button_SettingZoom") as §8K§).setComponentState(_loc2_);
      }
      
      private function §package§(param1:MouseEvent) : void
      {
         §9!K§.§8!?§().§6!$§(§9!K§.§-y§);
         this.update();
      }
      
      private function §^!L§(param1:MouseEvent) : void
      {
         §9!K§.§8!?§().§6!$§(§9!K§.§<!G§);
         this.update();
      }
      
      private function §8"7§(param1:MouseEvent) : void
      {
         §9!K§.§8!?§().§6!$§(§9!K§.§>$§);
         this.update();
      }
   }
}
