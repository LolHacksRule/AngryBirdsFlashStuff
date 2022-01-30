package §1!5§
{
   import § true§.§<"-§;
   import §""§.Popup;
   import §""§.StatePopupManager;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §>Z§.§5;§;
   import flash.events.MouseEvent;
   
   public class §^X§ extends Popup
   {
       
      
      private var §;!8§:Function;
      
      public function §^X§(param1:§=!]§, param2:StatePopupManager, param3:String)
      {
         super(§,!h§.§`C§.Views.PopupView_Prompt[0],param1);
         (getItemByName("TextField_PromptMessage") as §<"-§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.CLICK,this.§<! §);
      }
      
      public function get §!"'§() : Function
      {
         return this.§;!8§;
      }
      
      public function set §!"'§(param1:Function) : void
      {
         this.§;!8§ = param1;
      }
      
      protected function §<! §(param1:MouseEvent) : void
      {
         §5;§.playSound("Sound_Button_Click");
         this.close();
         if(this.§;!8§ != null)
         {
            this.§;!8§();
         }
      }
   }
}
