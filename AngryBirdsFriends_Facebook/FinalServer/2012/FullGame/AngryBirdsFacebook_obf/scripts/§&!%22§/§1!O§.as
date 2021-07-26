package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §5!G§.§&2§;
   import §<<§.§=!L§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §1!O§ extends Popup
   {
       
      
      public function §1!O§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupServerUpdated_Error[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§]!Q§);
         §]!i§ = §#c§;
         §&2§.pause();
         AngryBirdsFP11.§#!4§.§1z§();
      }
      
      private function §]!Q§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§#!4§.stage.displayState = StageDisplayState.NORMAL;
         §=!L§.§+">§("window.location.reload");
      }
   }
}
