package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §5!G§.§&2§;
   import flash.events.MouseEvent;
   
   public class §-!k§ extends Popup
   {
       
      
      public function §-!k§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§1!J§);
         §&2§.pause();
         AngryBirdsFP11.§#!4§.§1z§();
      }
      
      private function §1!J§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §&2§.resume();
         this.close();
      }
   }
}
