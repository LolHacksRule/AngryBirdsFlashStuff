package §1g§
{
   import §&!!§.Popup;
   import §;!A§.§ !F§;
   import §;"$§.§`5§;
   import flash.events.MouseEvent;
   
   public class §#6§ extends Popup
   {
       
      
      private var §9[§:Function;
      
      public function §#6§(param1:XML, param2:§`5§, param3:String)
      {
         super(param1,param2);
         (getItemByName("TextField_PromptMessage") as § !F§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.CLICK,this.§`K§);
      }
      
      public function get §5f§() : Function
      {
         return this.§9[§;
      }
      
      public function set §5f§(param1:Function) : void
      {
         this.§9[§ = param1;
      }
      
      protected function §`K§(param1:MouseEvent) : void
      {
         this.close();
         if(this.§9[§ != null)
         {
            this.§9[§();
         }
      }
   }
}
