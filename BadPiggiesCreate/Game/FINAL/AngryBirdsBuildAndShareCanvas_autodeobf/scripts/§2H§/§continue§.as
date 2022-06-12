package §2H§
{
   import §'p§.§`!<§;
   import §+h§.Popup;
   import §+h§.StatePopupManager;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import flash.events.MouseEvent;
   
   public class §continue§ extends Popup
   {
       
      
      private var §0!f§:Function;
      
      public function §continue§(param1:§'s§, param2:StatePopupManager, param3:String)
      {
         super(§`7§.§>"?§.Views.PopupView_Prompt[0],param1);
         (getItemByName("TextField_PromptMessage") as §`!<§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.CLICK,this.§2e§);
         mClip.gotoAndStop(1);
      }
      
      public function get §3!N§() : Function
      {
         return this.§0!f§;
      }
      
      public function set §3!N§(param1:Function) : void
      {
         this.§0!f§ = param1;
      }
      
      protected function §2e§(param1:MouseEvent) : void
      {
         §5!U§.playSound("Sound_Button_Click");
         this.close();
         if(this.§0!f§ != null)
         {
            this.§0!f§();
         }
      }
   }
}
