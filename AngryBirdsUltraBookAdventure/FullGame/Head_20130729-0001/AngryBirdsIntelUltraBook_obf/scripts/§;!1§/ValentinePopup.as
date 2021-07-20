package §;!1§
{
   import §"$§.Popup;
   import §5=§.§9F§;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §^!7§.§+!I§;
   import §^!7§.RetryingURLLoaderErrorEvent;
   import §^!7§.§[!<§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class ValentinePopup extends Popup
   {
      
      private static var sLoadingStarted:Boolean;
      
      private static var sLoader:§[!<§;
      
      private static var sData:Object;
       
      
      public function ValentinePopup(currentUIView:§`X§, statePopup:StatePopupManager)
      {
         super(§+q§.§%M§.Views.PopupView_Valentine[0],currentUIView);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§!b§);
      }
      
      public static function sendRequest() : void
      {
         if(!sLoadingStarted)
         {
            sLoadingStarted = true;
            sLoader = new §[!<§();
            sLoader.addEventListener(Event.COMPLETE,§5f§);
            sLoader.addEventListener(IOErrorEvent.IO_ERROR,§`3§);
            sLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§`3§);
            sLoader.addEventListener(RetryingURLLoaderErrorEvent.§6!O§,§`3§);
            sLoader.load(§+!I§.§[O§(AngryBirdsFP11.SERVER_ROOT + "/claimvalentinebundle"));
            §9F§.§ f§();
         }
      }
      
      protected static function §`3§(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§6!O§)
         {
            §9u§.§4!L§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         else
         {
            §9u§.§#"§();
         }
      }
      
      private static function §5f§(e:Event) : void
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
            §9u§.§@^§();
         }
         else
         {
            §9u§.§#"§();
         }
         sLoader = null;
      }
      
      private function §!b§(e:MouseEvent) : void
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
