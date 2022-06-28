package §%!4§
{
   import §##§.Popup;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §6!a§.§"!F§;
   import §6!a§.§>!K§;
   import §6!a§.RetryingURLLoaderErrorEvent;
   import §7p§.§+!N§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class ValentinePopup extends Popup
   {
      
      private static var sLoadingStarted:Boolean;
      
      private static var sLoader:§>!K§;
      
      private static var sData:Object;
       
      
      public function ValentinePopup(currentUIView:§6"§, statePopup:StatePopupManager)
      {
         super(§>!^§.§8'§.Views.PopupView_Valentine[0],currentUIView);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!L§);
      }
      
      public static function sendRequest() : void
      {
         if(!sLoadingStarted)
         {
            sLoadingStarted = true;
            sLoader = new §>!K§();
            sLoader.addEventListener(Event.COMPLETE,§^!d§);
            sLoader.addEventListener(IOErrorEvent.IO_ERROR,§@!F§);
            sLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@!F§);
            sLoader.addEventListener(RetryingURLLoaderErrorEvent.§3Y§,§@!F§);
            sLoader.load(§"!F§.§=i§(AngryBirdsFP11.SERVER_ROOT + "/claimvalentinebundle"));
            §+!N§.§1"§();
         }
      }
      
      protected static function §@!F§(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§3Y§)
         {
            §]!e§.§3!T§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         else
         {
            §]!e§.§finally§();
         }
      }
      
      private static function §^!d§(e:Event) : void
      {
         var parsingFailed:Boolean = false;
         try
         {
            sData = JSON.parse(sLoader.data);
         }
         catch(e:Error)
         {
            parsingFailed = true;
         }
         if(!parsingFailed && sData.success == true)
         {
            §]!e§.§&R§();
         }
         else
         {
            §]!e§.§finally§();
         }
         sLoader = null;
      }
      
      private function §"!L§(e:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         close();
      }
   }
}
