package §5!Y§
{
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §>"'§ extends Popup
   {
       
      
      public function §>"'§(param1:§`_§)
      {
         super(§ "<§.§%I§.Views.PopupView_StarWarsPromo[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§1'§);
         mClip.Button_Star_Wars.addEventListener(MouseEvent.CLICK,this.§7!W§);
      }
      
      private function §7!W§(param1:Event) : void
      {
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirdsstarwars/?ref=abfriends"),"_top");
      }
      
      private function §1'§(param1:Event) : void
      {
         close();
      }
   }
}
