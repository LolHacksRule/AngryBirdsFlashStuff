package §%!4§
{
   import § D§.§]!B§;
   import §##§.Popup;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends Popup
   {
       
      
      public function WarningPopup(currentUIView:§6"§, statePopup:StatePopupManager)
      {
         super(§>!^§.§8'§.Views.PopupView_Warning[0],currentUIView);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!L§);
         §]!B§.pause();
         AngryBirdsFP11.§5V§.§"§();
      }
      
      private function §"!L§(e:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §]!B§.resume();
         this.close();
      }
   }
}
