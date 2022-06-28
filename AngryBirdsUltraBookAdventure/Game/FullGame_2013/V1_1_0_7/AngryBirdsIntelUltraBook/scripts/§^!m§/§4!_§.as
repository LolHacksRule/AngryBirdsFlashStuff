package §^!m§
{
   import §!!j§.Popup;
   import §;!y§.§,!s§;
   import §>L§.§+!i§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §4!_§ extends Popup
   {
       
      
      public function §4!_§(param1:§&!G§, param2:StatePopupManager)
      {
         super(§2!z§.§ _§.Views.PopupServerUpdated_Error[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§#m§);
         §,!s§.pause();
         AngryBirdsFP11.§'!g§.§5!M§();
      }
      
      private function §#m§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§'!g§.stage.displayState = StageDisplayState.NORMAL;
         §+!i§.§>!y§("window.location.reload");
      }
   }
}
