package §5!Y§
{
   import §30§.§'"+§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §;!3§ extends Popup
   {
       
      
      public function §;!3§(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupServerUpdated_Error[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§ "B§);
         §""W§ = §>!L§;
         §?l§.pause();
         AngryBirdsFP11.§>m§.§^X§();
      }
      
      private function § "B§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§>m§.stage.displayState = StageDisplayState.NORMAL;
         §'"+§.§'!#§("window.location.reload");
      }
   }
}
