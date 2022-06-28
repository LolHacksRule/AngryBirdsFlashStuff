package §9!Q§
{
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §9#§.Popup;
   import flash.events.MouseEvent;
   
   public class §,]§ extends Popup
   {
       
      
      public function §,]§(param1:§ C§, param2:StatePopupManager)
      {
         super(dynamic.§[6§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+B§);
         §4!]§.pause();
         AngryBirdsFP11.§`!c§.§2!3§();
      }
      
      private function §+B§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §4!]§.resume();
         this.close();
      }
   }
}
