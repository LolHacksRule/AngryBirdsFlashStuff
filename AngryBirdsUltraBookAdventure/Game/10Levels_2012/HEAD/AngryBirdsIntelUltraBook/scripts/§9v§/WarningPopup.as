package §9v§
{
   import §-!>§.§4!T§;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends Popup
   {
       
      
      public function WarningPopup(currentUIView:§-!H§, statePopup:StatePopupManager)
      {
         super(§3!5§.§4@§.Views.PopupView_Warning[0],currentUIView);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§'?§);
         §4!T§.pause();
         AngryBirdsFP11.§8R§.§!!'§();
      }
      
      private function §'?§(e:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §4!T§.resume();
         this.close();
      }
   }
}
