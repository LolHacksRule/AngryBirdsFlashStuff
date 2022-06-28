package §%!4§
{
   import § D§.§]!B§;
   import §##§.Popup;
   import §'b§.ExternalInterfaceHandler;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import flash.events.MouseEvent;
   
   public class ErrorPopup extends Popup
   {
      
      public static const GENERAL_ERROR:String = "generalError";
      
      public static const THIRD_PARTY_COOKIES_DISABLED_ERROR:String = "thirdPartyCookiesDisabled";
       
      
      public function ErrorPopup(currentUIView:§6"§, statePopup:StatePopupManager, errorType:String = "generalError")
      {
         super(§>!^§.§8'§.Views.PopupView_Error[0],currentUIView);
         mClip.gotoAndStop([GENERAL_ERROR,THIRD_PARTY_COOKIES_DISABLED_ERROR].indexOf(errorType) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+!+§);
         §]!B§.pause();
         AngryBirdsFP11.§5V§.§"§();
      }
      
      private function §+!+§(e:MouseEvent) : void
      {
         AngryBirdsFP11.§5V§.§"§();
         ExternalInterfaceHandler.§>!2§("window.location.reload");
      }
   }
}
