package §@r§
{
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import flash.events.MouseEvent;
   
   public class §7!-§ extends Popup
   {
       
      
      public function §7!-§(param1:§,U§, param2:StatePopupManager)
      {
         super(§while§.§ v§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§2P§);
         §'5§.pause();
         AngryBirdsFP11.§^!<§.§>B§();
      }
      
      private function §2P§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §'5§.resume();
         this.close();
      }
   }
}
