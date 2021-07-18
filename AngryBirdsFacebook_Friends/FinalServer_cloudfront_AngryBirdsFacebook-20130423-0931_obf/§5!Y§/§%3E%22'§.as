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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super(§ "<§.§%I§.Views.PopupView_StarWarsPromo[0],param1);
            do
            {
               mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§1'§);
               do
               {
                  mClip.Button_Star_Wars.addEventListener(MouseEvent.CLICK,this.§7!W§);
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      private function §7!W§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            navigateToURL(new URLRequest("https://apps.facebook.com/angrybirdsstarwars/?ref=abfriends"),"_top");
         }
      }
      
      private function §1'§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            close();
         }
      }
   }
}
