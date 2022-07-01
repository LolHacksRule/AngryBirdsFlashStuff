package §1g§
{
   import §+!d§.§"r§;
   import §;!A§.§2v§;
   import §;"$§.§`5§;
   import §<!p§.§]"7§;
   import flash.events.MouseEvent;
   
   public class §=!c§ extends §4T§
   {
       
      
      public function §=!c§(param1:§`5§, param2:XML)
      {
         super(param1,param2);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§2"&§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§4!I§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§ g§);
         this.update();
      }
      
      private function update(param1:MouseEvent = null) : void
      {
         var _loc2_:String = !!§]"7§.§7U§().§ "1§(§]"7§.§+B§) ? §"r§.COMPONENT_STATE_ACTIVE_DEFAULT : §"r§.§5!D§;
         (getItemByName("Button_SettingSnap") as §2v§).setComponentState(_loc2_);
         _loc2_ = !!§]"7§.§7U§().§ "1§(§]"7§.§["7§) ? §"r§.COMPONENT_STATE_ACTIVE_DEFAULT : §"r§.§5!D§;
         (getItemByName("Button_SettingTips") as §2v§).setComponentState(_loc2_);
         _loc2_ = !!§]"7§.§7U§().§ "1§(§]"7§.§="-§) ? §"r§.COMPONENT_STATE_ACTIVE_DEFAULT : §"r§.§5!D§;
         (getItemByName("Button_SettingZoom") as §2v§).setComponentState(_loc2_);
      }
      
      private function §2"&§(param1:MouseEvent) : void
      {
         §]"7§.§7U§().§&"#§(§]"7§.§+B§);
         this.update();
      }
      
      private function §4!I§(param1:MouseEvent) : void
      {
         §]"7§.§7U§().§&"#§(§]"7§.§["7§);
         this.update();
      }
      
      private function § g§(param1:MouseEvent) : void
      {
         §]"7§.§7U§().§&"#§(§]"7§.§="-§);
         this.update();
      }
   }
}
