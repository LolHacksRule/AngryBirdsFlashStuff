package §?!'§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §6!A§.§4!%§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import §[!E§.§[!f§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §2!"§ extends Popup
   {
       
      
      private var §["<§:StatePopupManager;
      
      public function §2!"§(param1:§>!V§, param2:StatePopupManager)
      {
         super(§]!M§.§"!V§.Views.PopupView_Tools[0],param1);
         this.§["<§ = param2;
         param2.addEventListener(§[!f§.§`h§,this.onUiInteraction);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§3!O§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8]§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§;!$§);
         this.update();
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
      
      private function update(param1:Event = null) : void
      {
         var _loc2_:String = !!§4!%§.§`-§().§9y§(§4!%§.§!$§) ? §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT : §>!D§.§;!M§;
         (getItemByName("Button_SettingSnap") as §9"8§).setComponentState(_loc2_);
         _loc2_ = !!§4!%§.§`-§().§9y§(§4!%§.§]!o§) ? §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT : §>!D§.§;!M§;
         (getItemByName("Button_SettingTips") as §9"8§).setComponentState(_loc2_);
         _loc2_ = !!§4!%§.§`-§().§9y§(§4!%§.§]?§) ? §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT : §>!D§.§;!M§;
         (getItemByName("Button_SettingZoom") as §9"8§).setComponentState(_loc2_);
      }
      
      private function §3!O§(param1:MouseEvent) : void
      {
         §4!%§.§`-§().§[";§(§4!%§.§!$§);
         this.update();
      }
      
      private function §8]§(param1:MouseEvent) : void
      {
         §4!%§.§`-§().§[";§(§4!%§.§]!o§);
         this.update();
      }
      
      private function §;!$§(param1:MouseEvent) : void
      {
         §4!%§.§`-§().§[";§(§4!%§.§]?§);
         this.update();
      }
   }
}
