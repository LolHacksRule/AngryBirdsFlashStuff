package §'d§
{
   import §>!O§.§[+§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import flash.events.MouseEvent;
   
   public class § var§ extends Popup
   {
       
      
      public function § var§(param1:§8H§, param2:StatePopupManager)
      {
         super(§'p§.§ ,§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+B§);
         §[+§.pause();
         AngryBirdsFP11.§6Z§.§&=§();
      }
      
      private function §+B§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[+§.resume();
         this.close();
      }
   }
}
