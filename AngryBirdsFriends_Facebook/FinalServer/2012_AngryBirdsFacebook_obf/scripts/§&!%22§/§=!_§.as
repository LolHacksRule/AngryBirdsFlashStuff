package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §=!_§ extends Popup
   {
       
      
      public function §=!_§(param1:§^0§)
      {
         super(§%^§.§?>§.Views.PopupView_StarWarsPromo[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§4"L§);
         mClip.Button_Star_Wars.addEventListener(MouseEvent.CLICK,this.§+8§);
      }
      
      private function §+8§(param1:Event) : void
      {
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirdsstarwars/?ref=abfriends"),"_top");
      }
      
      private function §4"L§(param1:Event) : void
      {
         close();
      }
   }
}
