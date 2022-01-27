package §9!#§
{
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import flash.events.MouseEvent;
   
   public class § #§ extends Popup
   {
       
      
      public function § #§(param1:§"Q§, param2:StatePopupManager)
      {
         super(§`d§.§8?§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@!@§);
         §0!E§.pause();
         AngryBirdsFP11.§;!@§.§&L§();
      }
      
      private function §@!@§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §0!E§.resume();
         this.close();
      }
   }
}
