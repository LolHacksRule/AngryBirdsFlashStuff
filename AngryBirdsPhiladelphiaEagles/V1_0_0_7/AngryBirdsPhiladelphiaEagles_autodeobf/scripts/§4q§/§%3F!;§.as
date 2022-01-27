package §4q§
{
   import §"^§.§9=§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import flash.events.MouseEvent;
   
   public class §?!;§ extends Popup
   {
       
      
      public function §?!;§(param1:§@]§, param2:StatePopupManager)
      {
         super(§^!$§.§"!9§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§<h§);
         §9=§.pause();
         AngryBirdsFP11.§ j§.§,O§();
      }
      
      private function §<h§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §9=§.resume();
         this.close();
      }
   }
}
