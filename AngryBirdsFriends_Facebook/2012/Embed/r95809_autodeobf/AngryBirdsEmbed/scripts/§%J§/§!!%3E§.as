package §%J§
{
   import §-l§.§?'§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import flash.events.MouseEvent;
   
   public class §!!>§ extends Popup
   {
       
      
      public function §!!>§(param1:§"!4§, param2:StatePopupManager)
      {
         super(§1!$§.§7e§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§=J§);
         §?'§.pause();
         AngryBirdsFP11.§ for§.§?M§();
      }
      
      private function §=J§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §?'§.resume();
         this.close();
      }
   }
}
