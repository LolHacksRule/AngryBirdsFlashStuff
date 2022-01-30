package §&!P§
{
   import §<!I§.§7!N§;
   import §<Z§.§7!!§;
   import §]J§.Popup;
   import flash.events.MouseEvent;
   
   public class §"8§ extends Popup
   {
       
      
      public function §"8§(param1:XML, param2:§7!!§, param3:String)
      {
         super(param1,param2);
         (getItemByName("TextField_ErrorMessage") as §7!N§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§"$§);
      }
      
      protected function §"$§(param1:MouseEvent) : void
      {
         this.close();
      }
   }
}
