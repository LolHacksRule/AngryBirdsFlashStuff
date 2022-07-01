package §false§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §?!-§.§'!V§;
   import flash.events.MouseEvent;
   
   public class §%!W§ extends Popup
   {
       
      
      public function §%!W§(param1:§2U§, param2:StatePopupManager)
      {
         super(§=!Z§.§;K§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§9!I§);
         §'!V§.pause();
         AngryBirdsFP11.§`!d§.§2t§();
      }
      
      private function §9!I§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §'!V§.resume();
         this.close();
      }
   }
}
