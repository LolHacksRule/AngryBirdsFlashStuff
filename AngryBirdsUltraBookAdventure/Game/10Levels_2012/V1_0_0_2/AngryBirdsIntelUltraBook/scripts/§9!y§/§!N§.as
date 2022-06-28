package §9!y§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §[m§.Popup;
   import flash.events.MouseEvent;
   import §true§.§ _§;
   
   public class §!N§ extends Popup
   {
       
      
      public function §!N§(param1:§'!^§, param2:StatePopupManager)
      {
         super(§[!'§.§+@§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§=T§);
         § _§.pause();
         AngryBirdsFP11.§3!a§.§5C§();
      }
      
      private function §=T§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         § _§.resume();
         this.close();
      }
   }
}
