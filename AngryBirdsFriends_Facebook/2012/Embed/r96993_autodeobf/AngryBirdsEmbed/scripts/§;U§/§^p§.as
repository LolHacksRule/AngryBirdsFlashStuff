package §;U§
{
   import §>%§.§]3§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import flash.events.MouseEvent;
   
   public class §^p§ extends Popup
   {
       
      
      public function §^p§(param1:§&"§, param2:StatePopupManager)
      {
         super(§?O§.§@!<§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§ ,§);
         §]3§.pause();
         AngryBirdsFP11.§"h§.§8! §();
      }
      
      private function § ,§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §]3§.resume();
         this.close();
      }
   }
}
