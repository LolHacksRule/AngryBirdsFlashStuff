package §;!1§
{
   import §"$§.Popup;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends Popup
   {
       
      
      public function WarningPopup(currentUIView:§`X§, statePopup:StatePopupManager)
      {
         super(§+q§.§%M§.Views.PopupView_Warning[0],currentUIView);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§!b§);
         §`S§.pause();
         AngryBirdsFP11.§'t§.§?]§();
      }
      
      private function §!b§(e:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §`S§.resume();
         this.close();
      }
   }
}
