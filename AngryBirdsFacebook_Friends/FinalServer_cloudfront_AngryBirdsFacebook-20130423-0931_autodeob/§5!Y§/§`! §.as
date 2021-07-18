package §5!Y§
{
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §`! § extends Popup
   {
       
      
      public function §`! §(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§6">§);
         §?l§.pause();
         AngryBirdsFP11.§>m§.§^X§();
      }
      
      private function §6">§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         this.close();
      }
   }
}
