package §7!%§
{
   import §%B§.§^k§;
   import §-!@§.Popup;
   import §-!@§.StatePopupManager;
   import §5!8§.§6m§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import flash.events.MouseEvent;
   
   public class § if§ extends Popup
   {
       
      
      private var §=T§:Function;
      
      public function § if§(param1:§%!u§, param2:StatePopupManager, param3:String)
      {
         super(§#! §.§5!;§.Views.PopupView_Prompt[0],param1);
         (getItemByName("TextField_PromptMessage") as §6m§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.CLICK,this.§9y§);
      }
      
      public function get §0!O§() : Function
      {
         return this.§=T§;
      }
      
      public function set §0!O§(param1:Function) : void
      {
         this.§=T§ = param1;
      }
      
      protected function §9y§(param1:MouseEvent) : void
      {
         §^k§.playSound("Sound_Button_Click");
         this.close();
         if(this.§=T§ != null)
         {
            this.§=T§();
         }
      }
   }
}
