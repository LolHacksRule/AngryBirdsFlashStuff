package §?N§
{
   import §,B§.Popup;
   import §>! §.§^!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.events.MouseEvent;
   
   public class §[Y§ extends Popup
   {
       
      
      public function §[Y§(param1:§4`§, param2:StatePopupManager)
      {
         super(§ !I§.§3!a§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§-!C§);
         §^!c§.pause();
         AngryBirdsFP11.§3l§.§&2§();
      }
      
      private function §-!C§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §^!c§.resume();
         this.close();
      }
   }
}
