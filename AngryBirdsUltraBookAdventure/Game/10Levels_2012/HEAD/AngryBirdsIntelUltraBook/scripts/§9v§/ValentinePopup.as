package §9v§
{
   import § $§.§-!Q§;
   import § $§.§1!6§;
   import § $§.RetryingURLLoaderErrorEvent;
   import §9!!§.§85§;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class ValentinePopup extends Popup
   {
      
      private static var sLoadingStarted:Boolean;
      
      private static var sLoader:§1!6§;
      
      private static var sData:Object;
       
      
      public function ValentinePopup(currentUIView:§-!H§, statePopup:StatePopupManager)
      {
         super(§3!5§.§4@§.Views.PopupView_Valentine[0],currentUIView);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§'?§);
      }
      
      public static function sendRequest() : void
      {
         if(!sLoadingStarted)
         {
            sLoadingStarted = true;
            sLoader = new §1!6§();
            sLoader.addEventListener(Event.COMPLETE,§6K§);
            sLoader.addEventListener(IOErrorEvent.IO_ERROR,§9!f§);
            sLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§9!f§);
            sLoader.addEventListener(RetryingURLLoaderErrorEvent.§9#§,§9!f§);
            sLoader.load(§-!Q§.§<!%§(AngryBirdsFP11.SERVER_ROOT + "/claimvalentinebundle"));
            §85§.§8!S§();
         }
      }
      
      protected static function §9!f§(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§9#§)
         {
            §4!c§.§?!U§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         else
         {
            §4!c§.§8B§();
         }
      }
      
      private static function §6K§(e:Event) : void
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
            §4!c§.§throw§();
         }
         else
         {
            §4!c§.§8B§();
         }
         sLoader = null;
      }
      
      private function §'?§(e:MouseEvent) : void
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
