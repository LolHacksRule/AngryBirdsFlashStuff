package §-"'§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §=!7§.§!!]§;
   import §?!'§.Popup;
   import §?!'§.StatePopupManager;
   import flash.events.MouseEvent;
   
   public class §=!e§ extends Popup
   {
       
      
      private var §`_§:Function;
      
      public function §=!e§(param1:§>!V§, param2:StatePopupManager, param3:String)
      {
         super(§]!M§.§"!V§.Views.PopupView_Prompt[0],param1);
         (getItemByName("TextField_PromptMessage") as §!!]§).setText(param3);
         getItemByName("Button_Close").mClip.addEventListener(MouseEvent.CLICK,this.§+!V§);
         mClip.gotoAndStop(1);
      }
      
      public function get §2"&§() : Function
      {
         return this.§`_§;
      }
      
      public function set §2"&§(param1:Function) : void
      {
         this.§`_§ = param1;
      }
      
      protected function §+!V§(param1:MouseEvent) : void
      {
         §0"#§.§9"2§("Sound_Button_Click");
         this.close();
         if(this.§`_§ != null)
         {
            this.§`_§();
         }
      }
   }
}
