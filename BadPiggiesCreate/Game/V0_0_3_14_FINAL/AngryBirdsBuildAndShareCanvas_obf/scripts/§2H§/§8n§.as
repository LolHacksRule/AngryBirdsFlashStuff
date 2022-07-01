package §2H§
{
   import §'!A§.§9!!§;
   import §'p§.§="#§;
   import §1"2§.§'s§;
   import §6" §.§<8§;
   import flash.events.MouseEvent;
   
   public class §8n§ extends §,J§
   {
       
      
      public function §8n§(param1:§'s§, param2:XML)
      {
         super(param1,param2);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§0!$§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§!!H§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§3!s§);
         this.update();
      }
      
      private function update(param1:MouseEvent = null) : void
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
