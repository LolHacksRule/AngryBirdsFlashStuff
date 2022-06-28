package §9v§
{
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.events.MouseEvent;
   
   public class ErrorPopup extends Popup
   {
      
      public static const GENERAL_ERROR:String = "generalError";
      
      public static const THIRD_PARTY_COOKIES_DISABLED_ERROR:String = "thirdPartyCookiesDisabled";
       
      
      public function ErrorPopup(currentUIView:§-!H§, statePopup:StatePopupManager, errorType:String = "generalError")
      {
         super(§3!5§.§4@§.Views.PopupView_Error[0],currentUIView);
         mClip.gotoAndStop([GENERAL_ERROR,THIRD_PARTY_COOKIES_DISABLED_ERROR].indexOf(errorType) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§1Y§);
         §4!T§.pause();
         AngryBirdsFP11.§8R§.§!!'§();
      }
      
      private function §1Y§(e:MouseEvent) : void
      {
         AngryBirdsFP11.§8R§.§!!'§();
         ExternalInterfaceHandler.§!!@§("window.location.reload");
      }
   }
}
