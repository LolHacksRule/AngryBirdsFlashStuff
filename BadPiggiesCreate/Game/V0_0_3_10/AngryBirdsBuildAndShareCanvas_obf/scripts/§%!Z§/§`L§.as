package §%!Z§
{
   import §,"$§.Popup;
   import §0!d§.§`G§;
   import §4!t§.§=p§;
   import flash.events.MouseEvent;
   
   public class §`L§ extends Popup
   {
       
      
      private var §#J§:Function;
      
      public function §`L§(param1:XML, param2:§=p§, param3:String)
      {
         super(param1,param2);
         (getItemByName("TextField_PromptMessage") as §`G§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.CLICK,this.§^m§);
      }
      
      public function get §?u§() : Function
      {
         return this.§#J§;
      }
      
      public function set §?u§(param1:Function) : void
      {
         this.§#J§ = param1;
      }
      
      protected function §^m§(param1:MouseEvent) : void
      {
         this.close();
         if(this.§#J§ != null)
         {
            this.§#J§();
         }
      }
   }
}
