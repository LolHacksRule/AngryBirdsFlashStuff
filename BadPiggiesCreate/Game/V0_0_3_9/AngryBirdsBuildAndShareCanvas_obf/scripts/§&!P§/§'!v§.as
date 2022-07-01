package §&!P§
{
   import §&!&§.§+!A§;
   import §<!I§.§="5§;
   import §<Z§.§7!!§;
   import §?""§.§&z§;
   import flash.events.MouseEvent;
   
   public class §'!v§ extends §#!5§
   {
       
      
      public function §'!v§(param1:§7!!§, param2:XML)
      {
         super(param1,param2);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§%j§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§0!l§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§!l§);
         this.update();
      }
      
      private function update(param1:MouseEvent = null) : void
      {
         var _loc2_:String = !!§&z§.§%!w§().§>!M§(§&z§.§ T§) ? §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT : §+!A§.§5"6§;
         (getItemByName("Button_SettingSnap") as §="5§).setComponentState(_loc2_);
         _loc2_ = !!§&z§.§%!w§().§>!M§(§&z§.§@8§) ? §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT : §+!A§.§5"6§;
         (getItemByName("Button_SettingTips") as §="5§).setComponentState(_loc2_);
         _loc2_ = !!§&z§.§%!w§().§>!M§(§&z§.§7L§) ? §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT : §+!A§.§5"6§;
         (getItemByName("Button_SettingZoom") as §="5§).setComponentState(_loc2_);
      }
      
      private function §%j§(param1:MouseEvent) : void
      {
         §&z§.§%!w§().§<o§(§&z§.§ T§);
         this.update();
      }
      
      private function §0!l§(param1:MouseEvent) : void
      {
         §&z§.§%!w§().§<o§(§&z§.§@8§);
         this.update();
      }
      
      private function §!l§(param1:MouseEvent) : void
      {
         §&z§.§%!w§().§<o§(§&z§.§7L§);
         this.update();
      }
   }
}
