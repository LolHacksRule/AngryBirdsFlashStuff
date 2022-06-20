package §7N§
{
   import §+I§.§9!%§;
   import §<"1§.§,U§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §!1§ extends Popup
   {
       
      
      public function §!1§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupServerUpdated_Error[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§&!a§);
         §3!l§ = §1!L§;
         §9!%§.pause();
         AngryBirdsFP11.§`"B§.§'H§();
      }
      
      private function §&!a§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§`"B§.stage.displayState = StageDisplayState.NORMAL;
         §,U§.§53§("window.location.reload");
      }
   }
}
