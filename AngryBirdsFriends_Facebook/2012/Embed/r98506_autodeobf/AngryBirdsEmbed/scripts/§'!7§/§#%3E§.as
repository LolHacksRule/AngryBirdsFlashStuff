package §'!7§
{
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import flash.events.MouseEvent;
   
   public class §#>§ extends Popup
   {
       
      
      public function §#>§(param1:§5h§, param2:StatePopupManager)
      {
         super(§3!@§.§`Z§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§2!D§);
         §^?§.pause();
         AngryBirdsFP11.§5W§.§#!§();
      }
      
      private function §2!D§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §^?§.resume();
         this.close();
      }
   }
}
