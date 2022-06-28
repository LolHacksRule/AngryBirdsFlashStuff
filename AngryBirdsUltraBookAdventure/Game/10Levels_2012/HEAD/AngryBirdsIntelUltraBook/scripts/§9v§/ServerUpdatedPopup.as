package §9v§
{
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class ServerUpdatedPopup extends Popup
   {
       
      
      public function ServerUpdatedPopup(currentUIView:§-!H§, statePopup:StatePopupManager)
      {
         super(§3!5§.§4@§.Views.PopupServerUpdated_Error[0],currentUIView);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§1Y§);
         §4!T§.pause();
         AngryBirdsFP11.§8R§.§!!'§();
      }
      
      private function §1Y§(e:MouseEvent) : void
      {
         AngryBirdsFP11.§8R§.stage.displayState = StageDisplayState.NORMAL;
         ExternalInterfaceHandler.§!!@§("window.location.reload");
      }
   }
}
