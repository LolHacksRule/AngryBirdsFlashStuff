package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §]!A§.;
   import flash.events.MouseEvent;
   
   public class native extends Popup
   {
       
      
      public function native(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@"$§);
         §#6§.pause();
         AngryBirdsFP11.§@<§.§#m§();
      }
      
      private function §@"$§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §#6§.resume();
         this.close();
      }
   }
}
