package §6!C§
{
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §5!L§.§=w§;
   import flash.events.MouseEvent;
   
   public class §`G§ extends Popup
   {
       
      
      public function §`G§(param1:§4!,§, param2:StatePopupManager)
      {
         super(§5A§.§;L§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§-6§);
         §=w§.pause();
         AngryBirdsFP11.§ y§.§8<§();
      }
      
      private function §-6§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §=w§.resume();
         this.close();
      }
   }
}
