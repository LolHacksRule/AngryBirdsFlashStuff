package §%!Z§
{
   import §,"$§.Popup;
   import §0!d§.§`G§;
   import §4!t§.§=p§;
   import flash.events.MouseEvent;
   
   public class §>!1§ extends Popup
   {
       
      
      public function §>!1§(param1:XML, param2:§=p§, param3:String)
      {
         super(param1,param2);
         (getItemByName("TextField_ErrorMessage") as §`G§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§6,§);
      }
      
      protected function §6,§(param1:MouseEvent) : void
      {
         this.close();
      }
   }
}
