package §0!>§
{
   import §6h§.§[!4§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import flash.events.MouseEvent;
   
   public class §+R§ extends Popup
   {
       
      
      public function §+R§(param1:§+!B§, param2:StatePopupManager)
      {
         super(§-!K§.§"!G§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§=7§);
         §[!4§.pause();
         AngryBirdsFP11.§6C§.§+m§();
      }
      
      private function §=7§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[!4§.resume();
         this.close();
      }
   }
}
