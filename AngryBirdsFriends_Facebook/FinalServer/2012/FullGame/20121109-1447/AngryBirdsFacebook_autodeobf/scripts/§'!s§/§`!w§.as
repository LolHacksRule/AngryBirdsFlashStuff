package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §+N§.§@!]§;
   import §]!A§.;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §`!w§ extends Popup
   {
       
      
      public function §`!w§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupServerUpdated_Error[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§`!a§);
         §]"5§ = §97§;
         §#6§.pause();
         AngryBirdsFP11.§@<§.§#m§();
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§@<§.stage.displayState = StageDisplayState.NORMAL;
         §@!]§.§9"'§("window.location.reload");
      }
   }
}
