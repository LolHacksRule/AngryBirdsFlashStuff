package §false§
{
   import §!y§.§2U§;
   import §"!E§.§#!'§;
   import §#!4§.§<f§;
   import §+]§.§7&§;
   import flash.events.MouseEvent;
   
   public class §=#§ extends §0!4§
   {
       
      
      public function §=#§(param1:§2U§, param2:XML)
      {
         super(param1,param2);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§-R§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§"!V§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§7!W§);
         this.update();
      }
      
      private function update(param1:MouseEvent = null) : void
      {
         var _loc2_:String = !!§7&§.§=n§().§4V§(§7&§.§4!K§) ? §<f§.COMPONENT_STATE_ACTIVE_DEFAULT : §<f§.§`O§;
         (getItemByName("Button_SettingSnap") as §#!'§).setComponentState(_loc2_);
         _loc2_ = !!§7&§.§=n§().§4V§(§7&§.§&!S§) ? §<f§.COMPONENT_STATE_ACTIVE_DEFAULT : §<f§.§`O§;
         (getItemByName("Button_SettingTips") as §#!'§).setComponentState(_loc2_);
         _loc2_ = !!§7&§.§=n§().§4V§(§7&§.§5^§) ? §<f§.COMPONENT_STATE_ACTIVE_DEFAULT : §<f§.§`O§;
         (getItemByName("Button_SettingZoom") as §#!'§).setComponentState(_loc2_);
      }
      
      private function §-R§(param1:MouseEvent) : void
      {
         §7&§.§=n§().§"!$§(§7&§.§4!K§);
         this.update();
      }
      
      private function §"!V§(param1:MouseEvent) : void
      {
         §7&§.§=n§().§"!$§(§7&§.§&!S§);
         this.update();
      }
      
      private function §7!W§(param1:MouseEvent) : void
      {
         §7&§.§=n§().§"!$§(§7&§.§5^§);
         this.update();
      }
   }
}
