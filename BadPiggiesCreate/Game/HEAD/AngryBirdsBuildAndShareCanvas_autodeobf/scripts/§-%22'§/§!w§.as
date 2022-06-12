package §-"'§
{
   import §&!<§.§>!V§;
   import §6!A§.§4!%§;
   import §=!7§.§9"8§;
   import §@y§.§>!D§;
   import flash.events.MouseEvent;
   
   public class §!w§ extends §&"#§
   {
       
      
      public function §!w§(param1:§>!V§, param2:XML)
      {
         super(param1,param2);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§3!O§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8]§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§;!$§);
         this.update();
      }
      
      private function update(param1:MouseEvent = null) : void
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
