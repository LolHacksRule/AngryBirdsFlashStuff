package §?N§
{
   import §,B§.Popup;
   import §;!o§.§>!l§;
   import §>! §.§^!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §@S§ extends Popup
   {
       
      
      public function §@S§(param1:§4`§, param2:StatePopupManager)
      {
         super(§ !I§.§3!a§.Views.PopupServerUpdated_Error[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§<,§);
         §^!c§.pause();
         AngryBirdsFP11.§3l§.§&2§();
      }
      
      private function §<,§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§3l§.stage.displayState = StageDisplayState.NORMAL;
         §>!l§.§ a§("window.location.reload");
      }
   }
}
