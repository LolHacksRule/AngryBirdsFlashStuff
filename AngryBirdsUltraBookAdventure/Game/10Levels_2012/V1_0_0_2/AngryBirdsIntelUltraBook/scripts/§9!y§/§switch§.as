package §9!y§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §@i§.§=r§;
   import §[m§.Popup;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   import §true§.§ _§;
   
   public class §switch§ extends Popup
   {
       
      
      public function §switch§(param1:§'!^§, param2:StatePopupManager)
      {
         super(§[!'§.§+@§.Views.PopupServerUpdated_Error[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!8§);
         § _§.pause();
         AngryBirdsFP11.§3!a§.§5C§();
      }
      
      private function §"!8§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§3!a§.stage.displayState = StageDisplayState.NORMAL;
         §=r§.§[!3§("window.location.reload");
      }
   }
}
