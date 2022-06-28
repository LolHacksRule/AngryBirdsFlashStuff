package §_-7§
{
   import §_-Y8§.§_-05J§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-gU§.Popup;
   import §_-qO§.§ in§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §_-nD§ extends Popup
   {
       
      
      public function §_-nD§(param1:§_-5q§, param2:StatePopupManager)
      {
         super(§_-vB§.§_-ky§.Views.PopupServerUpdated_Error[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§_-pZ§);
         § in§.pause();
         AngryBirdsFP11.§_-07§.§_-DE§();
      }
      
      private function §_-pZ§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§_-07§.stage.displayState = StageDisplayState.NORMAL;
         §_-05J§.§_-0At§("window.location.reload");
      }
   }
}
