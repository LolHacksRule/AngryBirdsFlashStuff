package §;!1§
{
   import §"$§.Popup;
   import §&"§.ExternalInterfaceHandler;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import flash.events.MouseEvent;
   
   public class ErrorPopup extends Popup
   {
      
      public static const GENERAL_ERROR:String = "generalError";
      
      public static const THIRD_PARTY_COOKIES_DISABLED_ERROR:String = "thirdPartyCookiesDisabled";
       
      
      public function ErrorPopup(currentUIView:§`X§, statePopup:StatePopupManager, errorType:String = "generalError")
      {
         super(§+q§.§%M§.Views.PopupView_Error[0],currentUIView);
         mClip.gotoAndStop([GENERAL_ERROR,THIRD_PARTY_COOKIES_DISABLED_ERROR].indexOf(errorType) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§3!H§);
         §`S§.pause();
         AngryBirdsFP11.§'t§.§?]§();
      }
      
      private function §3!H§(e:MouseEvent) : void
      {
         AngryBirdsFP11.§'t§.§?]§();
         ExternalInterfaceHandler.§`F§("window.location.reload");
      }
   }
}
