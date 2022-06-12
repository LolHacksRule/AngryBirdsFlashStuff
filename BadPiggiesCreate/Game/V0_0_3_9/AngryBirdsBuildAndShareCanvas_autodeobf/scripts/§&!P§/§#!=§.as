package §&!P§
{
   import §<!I§.§7!N§;
   import §<Z§.§7!!§;
   import §]J§.Popup;
   import flash.events.MouseEvent;
   
   public class §#!=§ extends Popup
   {
       
      
      public function §#!=§(param1:XML, param2:§7!!§, param3:String)
      {
         super(param1,param2);
         (getItemByName("TextField_PromptMessage") as §7!N§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.CLICK,this.§'!U§);
      }
      
      protected function §'!U§(param1:MouseEvent) : void
      {
         this.close();
      }
   }
}
