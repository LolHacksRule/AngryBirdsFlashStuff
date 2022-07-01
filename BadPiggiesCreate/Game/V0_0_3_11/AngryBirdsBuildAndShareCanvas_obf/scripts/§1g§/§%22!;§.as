package §1g§
{
   import §&!!§.Popup;
   import §;!A§.§ !F§;
   import §;"$§.§`5§;
   import flash.events.MouseEvent;
   
   public class §"!;§ extends Popup
   {
       
      
      public function §"!;§(param1:XML, param2:§`5§, param3:String)
      {
         super(param1,param2);
         (getItemByName("TextField_ErrorMessage") as § !F§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§var §);
      }
      
      protected function §var §(param1:MouseEvent) : void
      {
         this.close();
      }
   }
}
