package §1!5§
{
   import § true§.§8K§;
   import §%!W§.§9!K§;
   import §0!C§.§=!]§;
   import §4!j§.§""3§;
   import flash.events.MouseEvent;
   
   public class §;!F§ extends §1&§
   {
       
      
      public function §;!F§(param1:§=!]§, param2:XML)
      {
         super(param1,param2);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§package§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§^!L§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8"7§);
         this.update();
      }
      
      private function update(param1:MouseEvent = null) : void
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
