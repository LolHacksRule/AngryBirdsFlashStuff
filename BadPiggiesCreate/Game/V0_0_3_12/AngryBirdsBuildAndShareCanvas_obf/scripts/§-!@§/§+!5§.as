package §-!@§
{
   import §%B§.§^k§;
   import §1!"§.§[f§;
   import §5!8§.§;!Z§;
   import §=!2§.§65§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §+!5§ extends Popup
   {
       
      
      private var §'<§:StatePopupManager;
      
      public function §+!5§(param1:§%!u§, param2:StatePopupManager)
      {
         super(§#! §.§5!;§.Views.PopupView_Tools[0],param1);
         this.§'<§ = param2;
         param2.addEventListener(§65§.§]!7§,this.onUiInteraction);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.dynamic);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§=!t§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§]r§);
         this.update();
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
      
      private function update(param1:Event = null) : void
      {
         var _loc2_:String = !!§[f§.§@"3§().§ ",§(§[f§.§9!k§) ? §;_§.COMPONENT_STATE_ACTIVE_DEFAULT : §;_§.§ "2§;
         (getItemByName("Button_SettingSnap") as §;!Z§).setComponentState(_loc2_);
         _loc2_ = !!§[f§.§@"3§().§ ",§(§[f§.§0!K§) ? §;_§.COMPONENT_STATE_ACTIVE_DEFAULT : §;_§.§ "2§;
         (getItemByName("Button_SettingTips") as §;!Z§).setComponentState(_loc2_);
         _loc2_ = !!§[f§.§@"3§().§ ",§(§[f§.§1V§) ? §;_§.COMPONENT_STATE_ACTIVE_DEFAULT : §;_§.§ "2§;
         (getItemByName("Button_SettingZoom") as §;!Z§).setComponentState(_loc2_);
      }
      
      private function dynamic(param1:MouseEvent) : void
      {
         §[f§.§@"3§().§@!D§(§[f§.§9!k§);
         this.update();
      }
      
      private function §=!t§(param1:MouseEvent) : void
      {
         §[f§.§@"3§().§@!D§(§[f§.§0!K§);
         this.update();
      }
      
      private function §]r§(param1:MouseEvent) : void
      {
         §[f§.§@"3§().§@!D§(§[f§.§1V§);
         this.update();
      }
   }
}
