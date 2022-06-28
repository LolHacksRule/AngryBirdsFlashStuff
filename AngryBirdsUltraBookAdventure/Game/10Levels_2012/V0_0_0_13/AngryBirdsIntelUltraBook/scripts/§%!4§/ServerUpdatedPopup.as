package §%!4§
{
   import § D§.§]!B§;
   import §##§.Popup;
   import §'b§.ExternalInterfaceHandler;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class ServerUpdatedPopup extends Popup
   {
       
      
      public function ServerUpdatedPopup(currentUIView:§6"§, statePopup:StatePopupManager)
      {
         super(§>!^§.§8'§.Views.PopupServerUpdated_Error[0],currentUIView);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+!+§);
         §]!B§.pause();
         AngryBirdsFP11.§5V§.§"§();
      }
      
      private function §+!+§(e:MouseEvent) : void
      {
         AngryBirdsFP11.§5V§.stage.displayState = StageDisplayState.NORMAL;
         ExternalInterfaceHandler.§>!2§("window.location.reload");
      }
   }
}
