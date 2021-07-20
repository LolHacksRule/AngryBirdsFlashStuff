package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §5!G§.§&2§;
   import §@",§.§6!B§;
   import flash.events.MouseEvent;
   
   public class §7!?§ extends Popup
   {
       
      
      public function §7!?§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupTournamentNotFound[0],param1);
         mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§]!Q§);
         §&2§.pause();
      }
      
      private function §]!Q§(param1:MouseEvent) : void
      {
         §,"I§.§&q§.§>"I§(§6!B§.STATE_NAME);
         close();
      }
   }
}
