package §%!Z§
{
   import §0!d§.§8!r§;
   import §4!t§.§=p§;
   import §7!&§.§!!k§;
   import §<8§.§"h§;
   import flash.events.MouseEvent;
   
   public class § !,§ extends §;!c§
   {
       
      
      public function § !,§(param1:§=p§, param2:XML)
      {
         super(param1,param2);
         getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§]!'§);
         getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§1V§);
         getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8%§);
         this.update();
      }
      
      private function update(param1:MouseEvent = null) : void
      {
         var _loc2_:String = !!§!!k§.§4Z§().§;K§(§!!k§.§'!S§) ? §"h§.COMPONENT_STATE_ACTIVE_DEFAULT : §"h§.§"!a§;
         (getItemByName("Button_SettingSnap") as §8!r§).setComponentState(_loc2_);
         _loc2_ = !!§!!k§.§4Z§().§;K§(§!!k§.§`-§) ? §"h§.COMPONENT_STATE_ACTIVE_DEFAULT : §"h§.§"!a§;
         (getItemByName("Button_SettingTips") as §8!r§).setComponentState(_loc2_);
         _loc2_ = !!§!!k§.§4Z§().§;K§(§!!k§.§0i§) ? §"h§.COMPONENT_STATE_ACTIVE_DEFAULT : §"h§.§"!a§;
         (getItemByName("Button_SettingZoom") as §8!r§).setComponentState(_loc2_);
      }
      
      private function §]!'§(param1:MouseEvent) : void
      {
         §!!k§.§4Z§().§73§(§!!k§.§'!S§);
         this.update();
      }
      
      private function §1V§(param1:MouseEvent) : void
      {
         §!!k§.§4Z§().§73§(§!!k§.§`-§);
         this.update();
      }
      
      private function §8%§(param1:MouseEvent) : void
      {
         §!!k§.§4Z§().§73§(§!!k§.§0i§);
         this.update();
      }
   }
}
