package §;!1§
{
   import §"$§.Popup;
   import §&"§.ExternalInterfaceHandler;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class ServerUpdatedPopup extends Popup
   {
       
      
      public function ServerUpdatedPopup(currentUIView:§`X§, statePopup:StatePopupManager)
      {
         super(§+q§.§%M§.Views.PopupServerUpdated_Error[0],currentUIView);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§3!H§);
         §`S§.pause();
         AngryBirdsFP11.§'t§.§?]§();
      }
      
      private function §3!H§(e:MouseEvent) : void
      {
         AngryBirdsFP11.§'t§.stage.displayState = StageDisplayState.NORMAL;
         ExternalInterfaceHandler.§`F§("window.location.reload");
      }
   }
}
