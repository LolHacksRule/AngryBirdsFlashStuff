package §1S§
{
   import §!D§.§%c§;
   import §-D§.Popup;
   import §?!V§.§ T§;
   import flash.events.MouseEvent;
   
   public class §"9§ extends Popup
   {
       
      
      public function §"9§(param1:XML, param2:§ T§, param3:String)
      {
         super(param1,param2);
         (getItemByName("TextField_ErrorMessage") as §%c§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§25§);
      }
      
      protected function §25§(param1:MouseEvent) : void
      {
         this.close();
      }
   }
}
