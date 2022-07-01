package §7!%§
{
   import §1!"§.§[f§;
   import §5!8§.§;!Z§;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import flash.events.MouseEvent;
   
   public class §%h§ extends §]j§
   {
       
      
      public function §%h§(param1:§%!u§, param2:XML)
      {
         super(param1,param2);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.dynamic);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§=!t§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§]r§);
         this.update();
      }
      
      private function update(param1:MouseEvent = null) : void
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
