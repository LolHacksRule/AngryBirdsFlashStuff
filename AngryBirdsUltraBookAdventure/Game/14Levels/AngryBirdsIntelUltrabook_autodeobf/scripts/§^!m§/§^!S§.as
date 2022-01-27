package §^!m§
{
   import §!!j§.Popup;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.events.MouseEvent;
   
   public class §^!S§ extends Popup
   {
       
      
      public function §^!S§(param1:§&!G§, param2:StatePopupManager)
      {
         super(§2!z§.§ _§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@!@§);
         §,!s§.pause();
         AngryBirdsFP11.§'!g§.§5!M§();
      }
      
      private function §@!@§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §,!s§.resume();
         this.close();
      }
   }
}
