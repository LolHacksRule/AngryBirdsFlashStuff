package §1S§
{
   import §!D§.§3!6§;
   import §9!7§.§6"0§;
   import §?!V§.§ T§;
   import §]!l§.§-"&§;
   import flash.events.MouseEvent;
   
   public class §`"$§ extends §<!n§
   {
       
      
      public function §`"$§(param1:§ T§, param2:XML)
      {
         super(param1,param2);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§>I§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8!8§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§`!t§);
         this.update();
      }
      
      private function update(param1:MouseEvent = null) : void
      {
         var _loc2_:String = !!§-"&§.§?!Q§().§3"#§(§-"&§.§ !A§) ? §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT : §6"0§.§ B§;
         (getItemByName("Button_SettingSnap") as §3!6§).setComponentState(_loc2_);
         _loc2_ = !!§-"&§.§?!Q§().§3"#§(§-"&§.§<!T§) ? §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT : §6"0§.§ B§;
         (getItemByName("Button_SettingTips") as §3!6§).setComponentState(_loc2_);
         _loc2_ = !!§-"&§.§?!Q§().§3"#§(§-"&§.§>R§) ? §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT : §6"0§.§ B§;
         (getItemByName("Button_SettingZoom") as §3!6§).setComponentState(_loc2_);
      }
      
      private function §>I§(param1:MouseEvent) : void
      {
         §-"&§.§?!Q§().§""2§(§-"&§.§ !A§);
         this.update();
      }
      
      private function §8!8§(param1:MouseEvent) : void
      {
         §-"&§.§?!Q§().§""2§(§-"&§.§<!T§);
         this.update();
      }
      
      private function §`!t§(param1:MouseEvent) : void
      {
         §-"&§.§?!Q§().§""2§(§-"&§.§>R§);
         this.update();
      }
   }
}
