package §9!Q§
{
   import §&9§.§1?§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §9#§.Popup;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §0`§ extends Popup
   {
       
      
      public function §0`§(param1:§ C§, param2:StatePopupManager)
      {
         super(dynamic.§[6§.Views.PopupServerUpdated_Error[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§&_§);
         §4!]§.pause();
         AngryBirdsFP11.§`!c§.§2!3§();
      }
      
      private function §&_§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§`!c§.stage.displayState = StageDisplayState.NORMAL;
         §1?§.§>!X§("window.location.reload");
      }
   }
}
