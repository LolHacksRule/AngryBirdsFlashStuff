package §@<§
{
   import §&b§.§[F§;
   import §4M§.;
   import §4M§.§^'§;
   import flash.events.MouseEvent;
   
   public class §[!@§ extends Popup
   {
       
      
      public function §[!@§(param1:§^'§, param2:StatePopupManager)
      {
         super(§#4§.§]X§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§6!L§);
         §[F§.pause();
         AngryBirdsFP11.§^F§.§;n§();
      }
      
      private function §6!L§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[F§.resume();
         this.close();
      }
   }
}
