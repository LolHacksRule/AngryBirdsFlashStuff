package §;!B§
{
   import §5H§.§[k§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import flash.events.MouseEvent;
   
   public class §[!E§ extends Popup
   {
       
      
      public function §[!E§(param1:§^3§, param2:StatePopupManager)
      {
         super(§!I§.§7y§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§8&§);
         §[k§.pause();
         AngryBirdsFP11.§,s§.§2'§();
      }
      
      private function §8&§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[k§.resume();
         this.close();
      }
   }
}
